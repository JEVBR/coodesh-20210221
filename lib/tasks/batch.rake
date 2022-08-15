
namespace :batch do
  desc "TODO"
  task get_new_flights: :environment do
    puts "getting new flights"
    flight_list = FlightsApiClient.flights
    flight_list[:results].each do |res| 
      begin
        launcher = Launcher.new
        launcher.imported_t = DateTime.now
        launcher.data = res
        launcher.imported_id = res[:id]
        launcher.status = 'draft'
        launcher.save
      rescue StandardError
        puts 'error saving flight'
      end
    end
  end
end


