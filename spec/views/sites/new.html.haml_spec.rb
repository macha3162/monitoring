require 'rails_helper'

RSpec.describe "sites/new", type: :view do
  before(:each) do
    assign(:site, Site.new(
      :title => "MyString",
      :description => "MyText",
      :domain => "MyString",
      :http_protocol => "MyString",
      :support_email => "MyString",
      :website_url => "MyString",
      :time_zone => "MyString"
    ))
  end

  it "renders new site form" do
    render

    assert_select "form[action=?][method=?]", sites_path, "post" do

      assert_select "input#site_title[name=?]", "site[title]"

      assert_select "textarea#site_description[name=?]", "site[description]"

      assert_select "input#site_domain[name=?]", "site[domain]"

      assert_select "input#site_http_protocol[name=?]", "site[http_protocol]"

      assert_select "input#site_support_email[name=?]", "site[support_email]"

      assert_select "input#site_website_url[name=?]", "site[website_url]"

      assert_select "input#site_time_zone[name=?]", "site[time_zone]"
    end
  end
end
