require 'curb'
require 'iconv'
require 'virtus'

require "hasami/settings"
require "hasami/flight_helper"
require "hasami/flight"
require "hasami/flight_parse"

class Hasami
  include HasamiSettings
  include FlightParse

  def initialize(option = {})
    source_url(option[:source_url])
    flights_parse
  end

  def flights
    @flights
  end

  def arrivals
    @flights.arrivals
  end

  def departure
    @flights.departure
  end

  def yesterday
    @flights.yesterday
  end

  def today
    @flights.today
  end

  def tomorrow
    @flights.tomorrow
  end

  def by_datetime(datetime = DateTime.now)
    @flights.by_datetime(datetime)
  end
end
