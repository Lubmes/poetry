require "rails_helper"

RSpec.describe PoemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/poems").to route_to("poems#index")
    end

    it "routes to #new" do
      expect(:get => "/poems/new").to route_to("poems#new")
    end

    it "routes to #show" do
      expect(:get => "/poems/1").to route_to("poems#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/poems/1/edit").to route_to("poems#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/poems").to route_to("poems#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/poems/1").to route_to("poems#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/poems/1").to route_to("poems#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/poems/1").to route_to("poems#destroy", :id => "1")
    end

  end
end
