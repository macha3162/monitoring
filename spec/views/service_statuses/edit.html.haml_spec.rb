require 'rails_helper'

RSpec.describe "service_statuses/edit", type: :view do
  before(:each) do
    @service_status = assign(:service_status, ServiceStatus.create!(
      :name => "MyString",
      :permalink => "MyString",
      :color => "MyString",
      :status_type => "MyString"
    ))
  end

  it "renders the edit service_status form" do
    render

    assert_select "form[action=?][method=?]", service_status_path(@service_status), "post" do

      assert_select "input#service_status_name[name=?]", "service_status[name]"

      assert_select "input#service_status_permalink[name=?]", "service_status[permalink]"

      assert_select "input#service_status_color[name=?]", "service_status[color]"

      assert_select "input#service_status_status_type[name=?]", "service_status[status_type]"
    end
  end
end
