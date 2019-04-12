require 'rails_helper'

RSpec.describe AppsController, type: :controller do
  
  describe "GET #index" do
  let!(:model) { App.create!(name: 'my-app-001') }
    before do
      get :index, :format => :json
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "JSON body response contains expected apps attributes" do
      body = JSON.parse(response.body)
      expect(response.body).to include model.name
    end

  end
end