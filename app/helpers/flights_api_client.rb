require "faraday"
require "json"

class FlightsApiClient
  def self.flights()
    url = "https://api.spaceflightnewsapi.net/v3/articles?_limit=2&_start=0"
    data = Faraday.get(url).body
    puts flights = JSON.parse(data, symbolize_names: true)
    p flights.count
  end
end
