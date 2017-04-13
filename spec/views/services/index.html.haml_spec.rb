require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        :name => "Name",
        :permalink => "Permalink",
        :podition => 2,
        :service_status_id => 3,
        :description => "MyText"
      ),
      Service.create!(
        :name => "Name",
        :permalink => "Permalink",
        :podition => 2,
        :service_status_id => 3,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
