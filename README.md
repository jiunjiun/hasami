# Hasami

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/hasami`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hasami'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hasami

#Usage

```ruby
require 'alohaha'
```

### All flights
```
haha = Hasami.new

haha.flights # All flights
```

###Flight attribute

```
p haha.flights.first
```

```
@raw=["2", "A", "CI", "中華航空", "109", "B9", "2015/07/24", "00:05:00", "2015/07/24", "00:15:00", "NRT", "Tokyo", "東京", "已到ARRIVED", "B737-800", "", "", "", "", ""], 
@terminal="T2", 
@kind="Arrivals", 
@code="CI", 
@code_zh="中華航空", 
@flight="109", 
@gate="B9", 
@datetime=#<DateTime: 2015-07-24T00:05:00+00:00 ((2457228j,300s,0n),+0s,2299161j)>, 
@expected_datetime=#<DateTime: 2015-07-24T00:15:00+00:00 ((2457228j,900s,0n),+0s,2299161j)>, 
@destination=#<Destination:0x007febbb3e40a0 
  @iata="NRT", 
  @en="Tokyo", 
  @zh="東京">, 
@flight_status="已到ARRIVED", 
@aircraft_type="B737-800", 
@other_route=#<Destination:0x007febba876cb8 
  @iata="", 
  @en="", 
  @zh="">, 
@baggage_carousel="", 
@check_in_counter=""
```

or

```
p haha.flights.first.terminal # "T2"
```

### Arrivals
```
p haha.arrivals
```

### Departure
```
p haha.departure
```

### Yesterday, Today, Tomorrow
```
p haha.yesterday
p haha.today
p haha.tomorrow
```

### Departure by today
```
p haha.departure.today
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hasami. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

