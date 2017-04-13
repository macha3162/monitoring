require 'rails_helper'

RSpec.describe "sites/index", type: :view do
  before(:each) do
    assign(:sites, [
      Site.create!(
        :title => "Title",
        :description => "MyText",
        :domain => "Domain",
        :http_protocol => "Http Protocol",
        :support_email => "Support Email",
        :website_url => "Website Url",
        :time_zone => "Time Zone"
      ),
      Site.create!(
        :title => "Title",
        :description => "MyText",
        :domain => "Domain",
        :http_protocol => "Http Protocol",
        :support_email => "Support Email",
        :website_url => "Website Url",
        :time_zone => "Time Zone"
      )
    ])
  end

  it "renders a list of sites" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Domain".to_s, :count => 2
    assert_select "tr>td", :text => "Http Protocol".to_s, :count => 2
    assert_select "tr>td", :text => "Support Email".to_s, :count => 2
    assert_select "tr>td", :text => "Website Url".to_s, :count => 2
    assert_select "tr>td", :text => "Time Zone".to_s, :count => 2
  end
end
