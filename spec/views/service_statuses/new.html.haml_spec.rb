require 'rails_helper'

RSpec.describe "service_statuses/new", type: :view do
  before(:each) do
    assign(:service_status, ServiceStatus.new(
      :name => "MyString",
      :permalink => "MyString",
      :color => "MyString",
      :status_type => "MyString"
    ))
  end

  it "renders new service_status form" do
    render

    assert_select "form[action=?][method=?]", service_statuses_path, "post" do

      assert_select "input#service_status_name[name=?]", "service_status[name]"

      assert_select "input#service_status_permalink[name=?]", "service_status[permalink]"

      assert_select "input#service_status_color[name=?]", "service_status[color]"

      assert_select "input#service_status_status_type[name=?]", "service_status[status_type]"
    end
  end
end
