require 'alphavantagerb'
require 'yaml'
require 'pry'

# ======================================
# This script calculate how much you would have earn 
# if you applied a DCA strategy on a specific stock from a date.
# You can edit the start_date, the stock and the monthly investment 
# at the bottom, in the perform method arguments
# This use the AlphaVantage stocks API to retrieve historical data.
# Get your free API key here: 
# ======================================

class DcaCalculator
  
  attr_reader :client, :start_date, :monthly_investment, :stock_keyword
  
  def initialize(start_date, monthly_investment, stock_keyword)
    @client = Alphavantage::Client.new(key: YAML.load_file('secret.yml')["api_key"])
    @start_date = start_date
    @monthly_investment = monthly_investment
    @stock_keyword = stock_keyword
  end
  
  def perform
    puts "=============================================================="
    puts "Calculating DCA strategy on #{stock_keyword}, from #{start_date.strftime("%m/%Y")} with #{monthly_investment}€/month"
    puts "=============================================================="
    stock = get_stock_from_keyword
    mom_growth = get_mom_growth_from_ipo(stock)
    gain = gain_with_dca_from_date(mom_growth)
    puts "=============================================================="
    puts format_gain(gain)
    puts "=============================================================="
  end
  
  def search_stock(keywords)
    stocks_found = client.search(keywords: keywords)
    stocks_found.output # Return the hash retrieved
  end
  
  private
  
  def get_stock_from_keyword
    client.stock(symbol: stock_keyword)
  end
  
  # Calculating month over month growth using adjusted data
  # We store each growth % in a hash with its date as a key
  def get_mom_growth_from_ipo(stock)
    timeserie = stock.timeseries(type: "monthly", adjusted: true).output["Monthly Adjusted Time Series"]
    mom_growth = timeserie.map do |k, v|
      open = v["1. open"].to_f
      close = v["4. close"].to_f
      adjusted_close = v["5. adjusted close"].to_f
      factor = 1 + (close - adjusted_close) / adjusted_close
      adjusted_open = open / factor
      percentage = 100 * (adjusted_close - adjusted_open) / adjusted_open
      { date: Date.parse(k), growth: percentage }
    end
    mom_growth
  end
  
  # To calculate the ending capital, we're adding to each month the monthly_investment
  # then calculate the added_value from it, and add it to the capital variable. 
  def gain_with_dca_from_date(mom_growth)
    user_period = mom_growth.select { |hash| hash[:date] > start_date }.reverse
    capital = monthly_investment
    user_period.each_with_index do |hash, i|
      percentage = hash[:growth]
      capital += monthly_investment unless i == 0 
      added_value = (capital * percentage) / 100
      capital += added_value
      puts "Capital on #{hash[:date].strftime("%m/%Y")}: #{capital.round(4)}€ (MoM Growth: #{percentage.round(4)}%)"
    end
    capital
  end
  
  def format_gain(gain)
    today = Date.today
    investments_count = (today.year - start_date.year) * 12 + today.month - start_date.month - (today.day >= start_date.day ? 0 : 1)
    total_invested = investments_count * monthly_investment
    raising_percentage = 100 * (gain - total_invested) / total_invested
    "Total invested: #{total_invested.round(2)}€ in #{investments_count} months\nToday, it would worth #{gain.round(2)}€, or #{raising_percentage.round(2)}% in P&L (dividends not taken into account)"
  end
  
end

# From 01/01/2013 to today, with $50/month on AMZN (Amazon stock)
DcaCalculator.new(Date.new(2016, 1, 1), 50, "AMZN").perform