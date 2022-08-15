require 'rails_helper'

RSpec.describe "Root", type: :request do
  describe "GET /" do
    it "returns http success" do
      # this will perform a GET request to the /health/index route
      get "/"
      expect(response.body).to eq('REST Back-end Challenge 20201209 Running')
      expect(response.status).to eq(200)
    end
  end
end
