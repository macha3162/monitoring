require 'rails_helper'

RSpec.describe "ServiceStatuses", type: :request do
  describe "GET /service_statuses" do
    it "works! (now write some real specs)" do
      get service_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
