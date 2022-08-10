require 'faraday'
require 'json'

class FlightsApiClient
  def self.latest_flights
    url = 'https://lldev.thespacedevs.com/2.0.0/launch/?limit=10&mode=api'
    # url = 'https://api.spaceflightnewsapi.net/v3/articles?_limit=2&_start=0'
    data = Faraday.get(url).body
    JSON.parse(data, symbolize_names: true)
  end

  def self.flights
    latest_flights[:data]
  end
end
