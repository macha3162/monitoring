require 'rails_helper'

RSpec.describe "issues/index", type: :view do
  before(:each) do
    assign(:issues, [
      Issue.create!(
        :state => "State",
        :service_status_id => "",
        :user_id => 2,
        :identifier => "Identifier"
      ),
      Issue.create!(
        :state => "State",
        :service_status_id => "",
        :user_id => 2,
        :identifier => "Identifier"
      )
    ])
  end

  it "renders a list of issues" do
    render
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
  end
end
