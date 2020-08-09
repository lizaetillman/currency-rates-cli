# Currency Rates CLI

Welcome to the Currency Rates CLI! 

An exchange rate is the value of one currency for the purpose of conversion to another. For some countries, exchange rates constantly change (flexible). For others, exchange rates rarely change (fixed).

This Ruby gem provides a Command Line Interface (CLI) to an external data source. It delivers real-time, reliable exchange rates collected from various commercial sources for 52 different countries. All currency rates in this program are based on the United States Dollar (USD).

Please Note:  This program displays a country's three-letter alphabetic code (ISO 4217 Currency Code) rather than the country's name. To read more about ISO 4217 codes, visit [https://en.wikipedia.org/wiki/ISO_4217].  

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'currency_rates_cli'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install currency_rates_cli

## Usage

Type the following code into the terminal to initiate and run the program:


    ./bin/executable

The program will welcome the User then ask for them to either 'enter' or 'exit' the program.

A list of currency codes will appear!

After, the User can select a currency code (by number) to see the currency's rate based on the United States Dollar (USD).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lizaetillman/currency-rates-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/lizaetillman/currency-rates-cli/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CurrencyRatesCli project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/lizaetillman/currency_rates_cli/blob/master/CODE_OF_CONDUCT.md).
