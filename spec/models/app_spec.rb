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

RSpec.describe App, type: :model do
  describe ".between" do
 
      start_id = App.create(name: "my-app-001")
      mid_id = App.create(name: "my-app-002")
    end_id = App.create(name: "my-app-003")
    outside_id = App.create(name: "my-app-004")
    it "returns only ids between value" do
      arr = App.between(1, 3)
      expect(arr[1].name).to include("002")
    end
  end

end

RSpec.describe App, type: :model do
  describe ".starts_with" do
 
      first_id = App.create(name: "my-app-001")
      second_id = App.create(name: "my-app-002")
    third_id = App.create(name: "my-app-003")
    fourth_id = App.create(name: "my-app-004")
    it "returns only ids after value" do
      arr = App.starts_with(2)
      expect(arr[2].name).to include("004")
    end
  end

end

RSpec.describe App, type: :model do
  describe ".ends_with" do
 
      first_id = App.create(name: "my-app-001")
      second_id = App.create(name: "my-app-002")
    third_id = App.create(name: "my-app-003")
    fourth_id = App.create(name: "my-app-004")
    it "returns only ids before value" do
      arr = App.ends_with(3)
      expect(arr[2].name).to include("003")
    end
  end

end

RSpec.describe App, type: :model do
  describe ".between_name" do
 
      first_id = App.create(name: "my-app-001")
      second_id = App.create(name: "my-app-002")
    third_id = App.create(name: "my-app-003")
    fourth_id = App.create(name: "my-app-004")
    it "returns only names in between value" do
      arr = App.between_name("my-app-002", "my-app-004")
      expect(arr[1].name).to include("003")
    end
  end

end