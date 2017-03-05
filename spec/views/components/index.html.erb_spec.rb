require 'rails_helper'

RSpec.describe "components/index", type: :view do
  before(:each) do
    assign(:components, [
      Component.create!(
        :organization_id => "",
        :status => "Status",
        :url => "Url"
      ),
      Component.create!(
        :organization_id => "",
        :status => "Status",
        :url => "Url"
      )
    ])
  end

  it "renders a list of components" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
