require 'rails_helper'

RSpec.describe "components/edit", type: :view do
  before(:each) do
    @component = assign(:component, Component.create!(
      :organization_id => "",
      :status => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit component form" do
    render

    assert_select "form[action=?][method=?]", component_path(@component), "post" do

      assert_select "input#component_organization_id[name=?]", "component[organization_id]"

      assert_select "input#component_status[name=?]", "component[status]"

      assert_select "input#component_url[name=?]", "component[url]"
    end
  end
end
