require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :name => "MyString",
      :permalink => "MyString",
      :position => 1,
      :service_status_id => 1,
      :description => "MyText"
    ))
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do

      assert_select "input#service_name[name=?]", "service[name]"

      assert_select "input#service_permalink[name=?]", "service[permalink]"

      assert_select "input#service_position[name=?]", "service[position]"

      assert_select "input#service_service_status_id[name=?]", "service[service_status_id]"

      assert_select "textarea#service_description[name=?]", "service[description]"
    end
  end
end
