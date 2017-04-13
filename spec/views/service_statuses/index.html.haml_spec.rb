require 'rails_helper'

RSpec.describe "service_statuses/index", type: :view do
  before(:each) do
    assign(:service_statuses, [
      ServiceStatus.create!(
        :name => "Name",
        :permalink => "Permalink",
        :color => "Color",
        :status_type => "Status Type"
      ),
      ServiceStatus.create!(
        :name => "Name",
        :permalink => "Permalink",
        :color => "Color",
        :status_type => "Status Type"
      )
    ])
  end

  it "renders a list of service_statuses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Status Type".to_s, :count => 2
  end
end
