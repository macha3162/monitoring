require 'rails_helper'

RSpec.describe "services/new", type: :view do
  before(:each) do
    assign(:service, Service.new(
      :name => "MyString",
      :permalink => "MyString",
      :podition => 1,
      :service_status_id => 1,
      :description => "MyText"
    ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input#service_name[name=?]", "service[name]"

      assert_select "input#service_permalink[name=?]", "service[permalink]"

      assert_select "input#service_podition[name=?]", "service[podition]"

      assert_select "input#service_service_status_id[name=?]", "service[service_status_id]"

      assert_select "textarea#service_description[name=?]", "service[description]"
    end
  end
end
