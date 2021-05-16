require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET /" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "#index" do
    it "render JSON" do
      post :index, :format => :json
      expect(response.content_type).to eq "application/json; charset=utf-8"
    end
  end

end
