require 'spec_helper'

describe Hasami do
  it 'has a version number' do
    expect(HasamiSettings::VERSION).not_to be_nil
  end

  context 'methods' do
    before do
      @haha = Hasami.new
    end

    it 'flights' do
      expect(@haha.flights).to be_truthy
    end

    it 'arrivals' do
      arrivals = @haha.arrivals
      expect(arrivals.first.kind).to eq 'Arrivals'
    end

    it 'departure' do
      departure = @haha.departure
      expect(departure.first.kind).to eq 'Departure'
    end

    it 'yesterday' do
      yesterdays = @haha.yesterday
      expect(yesterdays.first.datetime.to_date).to eq Date.today.prev_day
    end

    it 'today' do
      todays = @haha.today
      expect(todays.first.datetime.to_date).to eq Date.today
    end

    it 'tomorrow' do
      tomorrow = @haha.tomorrow
      expect(tomorrow.first.datetime.to_date).to eq Date.today.next_day
    end
  end
end
