require 'rails_helper'

RSpec.describe 'Launchers', type: :request do
  describe 'GET /v1/launchers' do
    before do
      FactoryBot.create_list(:launcher, 10)
    end
    it "returns http success" do

      #  GET /launchers: Listar os launchers da base de dados de maneira paginada
      get "/api/v1/launchers"
      expect(response.status).to eq(200)
      body = JSON.parse(response.body)
      expect(body.count).to eq(10)
      expect(response.body).to include('imported_t')
      expect(response.body).to include('status')
      expect(response.body).to include('data')
    end
  end

  describe 'GET /v1/launcher' do
    before do
      FactoryBot.create(:launcher, :id => 7)
    end
    it 'returns http success' do
      # GET /launchers/:launchId: Obter a informação somente de um launch da base de dados
      get "/api/v1/launchers/7"
      expect(response.status).to eq(200)
      expect(response.body).to include('imported_t')
      expect(response.body).to include('status')
      expect(response.body).to include('data')
    end

    describe 'DESTROY /v1/launcher' do
      # DELETE /launchers/:launchId: Remover o launch da base
      it "deletes thing" do
        delete "/api/v1/launchers/7"
        expect(Launcher.all.count).to be 0
      end
    end

    describe 'GET /v1/launchers' do
      before do
        FactoryBot.create(:launcher, :id => 8)
      end
      it "returns http success" do
        # PUT /launchers/:launchId: Será responsável por receber atualizações realizada
        put '/api/v1/launchers/8', params: { id: 8, launcher: { data: 'newdata'} }
        expect(response.status).to eq(200)
        body = JSON.parse(response.body)
        expect(body['data']).to eq('newdata')
      end
    end
  end
end
