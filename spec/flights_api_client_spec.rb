require 'rails_helper'

RSpec.describe 'flights_api_client' do
  describe 'flights' do
    let(:hello) { FlightsApiClient.flights }
    it "returns correctly some data" do
      expect(hello).to be_kind_of(Hash)
      expect(hello).to have_key(:status)
      expect(hello).to have_key(:data)
    end
  end
end
