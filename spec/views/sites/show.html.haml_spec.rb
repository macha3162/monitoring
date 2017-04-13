require 'rails_helper'

RSpec.describe "sites/show", type: :view do
  before(:each) do
    @site = assign(:site, Site.create!(
      :title => "Title",
      :description => "MyText",
      :domain => "Domain",
      :http_protocol => "Http Protocol",
      :support_email => "Support Email",
      :website_url => "Website Url",
      :time_zone => "Time Zone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Domain/)
    expect(rendered).to match(/Http Protocol/)
    expect(rendered).to match(/Support Email/)
    expect(rendered).to match(/Website Url/)
    expect(rendered).to match(/Time Zone/)
  end
end
