# YahooGeminiClient

Ruby wrapper for the Yahoo! Gemini API

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yahoo_gemini_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yahoo_gemini_client

## Usage

```ruby
# Currently supports OAuth2 Auth Code Strategy (Explicit Grant Flow) only
# see https://developer.yahoo.com/oauth2/guide/flows_authcode/

client = YahooGeminiClient::Client.new(
  client_id: "consumer_key",
  client_secret: "consumer_secret",
)

client.authorization_url # returns authorization url

# visit authorization url returned in a web browser to get the Authorization Code
# assuming you've got an authentication code...

client.get_token(authorization_code)

# Advertisers endpoint
client.advertisers.each { |advertiser| puts advertiser.advertiser_name }
client.advertisers.find(123)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/g5/yahoo_gemini_client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

