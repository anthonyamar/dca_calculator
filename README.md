# DCA strategy calculator

How much would you have earn if you had invested $50 each month on Amazon's stock from a given date? 
If this is a question you already asked yourself, then this program is for you.

Example output: 
```
==============================================================
Calculating DCA strategy on AMZN, from 01/2016 with 50€/month
==============================================================
Capital on 01/2016: 44.7211€ (MoM Growth: -10.5578%)
Capital on 02/2016: 90.522€ (MoM Growth: -4.4331%)
Capital on 03/2016: 149.9568€ (MoM Growth: 6.7141%)
Capital on 04/2016: 223.3561€ (MoM Growth: 11.7021%)
Capital on 05/2016: 297.5946€ (MoM Growth: 8.867%)
Capital on 06/2016: 345.0488€ (MoM Growth: -0.7324%)
Capital on 07/2016: 417.8985€ (MoM Growth: 5.784%)
Capital on 08/2016: 473.6189€ (MoM Growth: 1.2226%)
Capital on 09/2016: 568.7267€ (MoM Growth: 8.6146%)
Capital on 10/2016: 584.5487€ (MoM Growth: -5.5239%)
Capital on 11/2016: 596.0866€ (MoM Growth: -6.0613%)
Capital on 12/2016: 643.9055€ (MoM Growth: -0.3376%)
Capital on 01/2017: 753.9283€ (MoM Growth: 8.65%)
Capital on 02/2017: 819.2756€ (MoM Growth: 1.909%)
Capital on 03/2017: 903.4026€ (MoM Growth: 3.9259%)
Capital on 04/2017: 993.117€ (MoM Growth: 4.1655%)
Capital on 05/2017: 1118.2421€ (MoM Growth: 7.202%)
Capital on 06/2017: 1132.4551€ (MoM Growth: -3.0633%)
Capital on 07/2017: 1200.6759€ (MoM Growth: 1.5409%)
Capital on 08/2017: 1237.988€ (MoM Growth: -1.0145%)
Capital on 09/2017: 1258.085€ (MoM Growth: -2.3217%)
Capital on 10/2017: 1499.7927€ (MoM Growth: 14.6556%)
Capital on 11/2017: 1649.8269€ (MoM Growth: 6.4547%)
Capital on 12/2017: 1696.0851€ (MoM Growth: -0.2201%)
Capital on 01/2018: 2161.5848€ (MoM Growth: 23.7961%)
Capital on 02/2018: 2314.8176€ (MoM Growth: 4.6678%)
Capital on 03/2018: 2261.2943€ (MoM Growth: -4.3776%)
Capital on 04/2018: 2553.4257€ (MoM Growth: 10.476%)
Capital on 05/2018: 2714.01€ (MoM Growth: 4.2476%)
Capital on 06/2018: 2869.9927€ (MoM Growth: 3.8344%)
Capital on 07/2018: 3084.3952€ (MoM Growth: 5.6302%)
Capital on 08/2018: 3536.2268€ (MoM Growth: 12.8201%)
Capital on 09/2018: 3544.6396€ (MoM Growth: -1.1596%)
Capital on 10/2018: 2840.8994€ (MoM Growth: -20.9685%)
Capital on 11/2018: 3009.5603€ (MoM Growth: 4.1046%)
Capital on 12/2018: 2597.0453€ (MoM Growth: -15.117%)
Capital on 01/2019: 3105.0752€ (MoM Growth: 17.3034%)
Capital on 02/2019: 3156.904€ (MoM Growth: 0.058%)
Capital on 03/2019: 3450.2996€ (MoM Growth: 7.5897%)
Capital on 04/2019: 3746.1028€ (MoM Growth: 7.0223%)
Capital on 05/2019: 3485.7913€ (MoM Growth: -8.1745%)
Capital on 06/2019: 3804.2286€ (MoM Growth: 7.592%)
Capital on 07/2019: 3741.587€ (MoM Growth: -2.9225%)
Capital on 08/2019: 3598.2722€ (MoM Growth: -5.0985%)
Capital on 09/2019: 3578.0069€ (MoM Growth: -1.926%)
Capital on 10/2019: 3691.7152€ (MoM Growth: 1.756%)
Capital on 11/2019: 3768.4804€ (MoM Growth: 0.7153%)
Capital on 12/2019: 3910.4084€ (MoM Growth: 2.4074%)
Capital on 01/2020: 4242.8542€ (MoM Growth: 7.1317%)
Capital on 02/2020: 4022.0153€ (MoM Growth: -6.3091%)
Capital on 03/2020: 4164.349€ (MoM Growth: 2.2675%)
Capital on 04/2020: 5393.9272€ (MoM Growth: 27.9896%)
Capital on 05/2020: 5689.8684€ (MoM Growth: 4.5177%)
Capital on 06/2020: 6468.6535€ (MoM Growth: 12.6969%)
Capital on 07/2020: 7479.8865€ (MoM Growth: 14.7459%)
Capital on 08/2020: 8170.1794€ (MoM Growth: 8.5034%)
Capital on 09/2020: 7417.2609€ (MoM Growth: -9.7677%)
Capital on 10/2020: 7067.2457€ (MoM Growth: -5.3569%)
Capital on 11/2020: 7364.3481€ (MoM Growth: 3.4719%)
Capital on 12/2020: 7573.4711€ (MoM Growth: 2.1462%)
Capital on 01/2021: 7474.7319€ (MoM Growth: -1.9511%)
Capital on 02/2021: 7177.941€ (MoM Growth: -4.6087%)
Capital on 03/2021: 7149.8127€ (MoM Growth: -1.0809%)
Capital on 04/2021: 7786.939€ (MoM Growth: 8.1547%)
==============================================================
Total invested: 3150€ in 63 months
Today, it would worth 7786.94€, or 147.2% in P&L (dividends not taken into account)
==============================================================
```

## Usage

The program use Alpha Vantage API for pulling stocks data and timeseries. You can get a free API key here: [https://www.alphavantage.co/support/#api-key](https://www.alphavantage.co/support/#api-key)

Install `alphavantagerb` gem
```bash
$ gem install "alphavantagerb"
```

Add your API key in a `secret.yml` file
```yaml
api_key: "your api key here"
```

Tweak the parameters of the call function at the end of the program. Here it will output the DCA schedule from 01/01/2016 with $50/month on AMZN (Amazon stock)
```ruby
DcaCalculator.new(Date.new(2016, 1, 1), 50, "AMZN").perform
```

Run the program in your terminal
```bash
$ ruby main.rb
```

## Choosing stocks

Alpha Vantage API have more than 100 000+ supported stocks, however, it can be sometimes difficult to find the right code for your stock. You can use the `search_stock(keywords)` method to output a list of stocks that match specifics keywords. Once you have the output, just take the right symbol for the stock you were searching for. 

Note that this works only on equity stocks, and not on indexes, ETFs, FOREX or cryptos, even if the stock appeared in the search result. This is mainly because I hadn't implemented these and also because of the API that doesn't provide access to monthly data from ETFs and indexes. 

## Contribute

Feel free to open a pull request if you want to contribute to the service. 
