require 'rails_helper'

RSpec.describe "issue_updates/index", type: :view do
  before(:each) do
    assign(:issue_updates, [
      IssueUpdate.create!(
        :state => "State",
        :issue => nil,
        :user => nil,
        :identifier => "Identifier",
        :description => "MyText"
      ),
      IssueUpdate.create!(
        :state => "State",
        :issue => nil,
        :user => nil,
        :identifier => "Identifier",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of issue_updates" do
    render
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
