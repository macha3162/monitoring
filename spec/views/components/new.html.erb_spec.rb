require 'rails_helper'

RSpec.describe "components/new", type: :view do
  before(:each) do
    assign(:component, Component.new(
      :organization_id => "",
      :status => "MyString",
      :url => "MyString"
    ))
  end

  it "renders new component form" do
    render

    assert_select "form[action=?][method=?]", components_path, "post" do

      assert_select "input#component_organization_id[name=?]", "component[organization_id]"

      assert_select "input#component_status[name=?]", "component[status]"

      assert_select "input#component_url[name=?]", "component[url]"
    end
  end
end
