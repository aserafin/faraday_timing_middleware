# FaradayTimingMiddleware

This is simple gem for tracking response times of external resources using `Faraday`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'faraday_timing_middleware'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install faraday_timing_middleware

## Usage

You can use it as any other `Faraday` middleware

```ruby
Faraday::Connection.new(url) do |connection|
  connection.use :response_time
  connection.adapter Faraday.default_adapter
end
```

**IMPORTANT**

Order of middlewares is important so be careful where you put this middleware. From Faraday's [README](https://github.com/lostisland/faraday)

>The order in which middleware is stacked is important. Like with Rack, the first middleware on the list wraps all others, while the last middleware is the innermost one, so that must be the adapter.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/faraday_timing_middleware/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
