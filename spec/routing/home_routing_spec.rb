require "rails_helper"

RSpec.describe HomeController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/").to route_to("home#index")
    end

    it "routes to #show" do
      expect(:get => "/show/1").to route_to("home#show", :id => "1")
    end

    it "routes to #update" do
      expect(:get => "/update").to route_to("home#update")
    end

  end
end