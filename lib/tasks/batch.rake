
namespace :batch do
  desc "TODO"
  task get_new_flights: :environment do
    puts "getting new flights"
    FlightsApiClient.flights
  end
end


