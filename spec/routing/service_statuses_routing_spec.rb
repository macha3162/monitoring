require "rails_helper"

RSpec.describe ServiceStatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/service_statuses").to route_to("service_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/service_statuses/new").to route_to("service_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/service_statuses/1").to route_to("service_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/service_statuses/1/edit").to route_to("service_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/service_statuses").to route_to("service_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/service_statuses/1").to route_to("service_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/service_statuses/1").to route_to("service_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/service_statuses/1").to route_to("service_statuses#destroy", :id => "1")
    end

  end
end
