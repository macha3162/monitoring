require "rails_helper"

RSpec.describe IssueUpdatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/issue_updates").to route_to("issue_updates#index")
    end

    it "routes to #new" do
      expect(:get => "/issue_updates/new").to route_to("issue_updates#new")
    end

    it "routes to #show" do
      expect(:get => "/issue_updates/1").to route_to("issue_updates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/issue_updates/1/edit").to route_to("issue_updates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/issue_updates").to route_to("issue_updates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/issue_updates/1").to route_to("issue_updates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/issue_updates/1").to route_to("issue_updates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/issue_updates/1").to route_to("issue_updates#destroy", :id => "1")
    end

  end
end
