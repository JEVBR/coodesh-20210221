require 'faraday'
require 'json'

class FlightsApiClient
  def self.latest_flights
    url = 'https://lldev.thespacedevs.com/2.0.0/launch/?limit=10&mode=api'
    data = Faraday.get(url).body
    JSON.parse(data, symbolize_names: true)
  end

  def self.flights
    latest_flights
  end
end
