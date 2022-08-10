require 'rails_helper'
require 'webmock/rspec'

RSpec.describe 'flights_api_client' do
  describe 'flights' do
    let(:flights) { FlightsApiClient.flights }
    it 'returns correctly some data' do
      expect(flights).to be_kind_of(Hash)
      expect(flights).to have_key(:count)
      expect(flights).to have_key(:previous)
      expect(flights).to have_key(:next)
      expect(flights).to have_key(:results)
    end
  end
end
