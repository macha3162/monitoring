require 'rails_helper'

RSpec.describe "maintenances/index", type: :view do
  before(:each) do
    assign(:maintenances, [
      Maintenance.create!(
        :title => "Title",
        :description => "MyText",
        :identifier => "Identifier",
        :length_in_minutes => 2,
        :user_id => 3,
        :service_status_id => 4
      ),
      Maintenance.create!(
        :title => "Title",
        :description => "MyText",
        :identifier => "Identifier",
        :length_in_minutes => 2,
        :user_id => 3,
        :service_status_id => 4
      )
    ])
  end

  it "renders a list of maintenances" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
