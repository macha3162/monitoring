require 'rails_helper'

RSpec.describe "maintenances/edit", type: :view do
  before(:each) do
    @maintenance = assign(:maintenance, Maintenance.create!(
      :title => "MyString",
      :description => "MyText",
      :identifier => "MyString",
      :length_in_minutes => 1,
      :user_id => 1,
      :service_status_id => 1
    ))
  end

  it "renders the edit maintenance form" do
    render

    assert_select "form[action=?][method=?]", maintenance_path(@maintenance), "post" do

      assert_select "input#maintenance_title[name=?]", "maintenance[title]"

      assert_select "textarea#maintenance_description[name=?]", "maintenance[description]"

      assert_select "input#maintenance_identifier[name=?]", "maintenance[identifier]"

      assert_select "input#maintenance_length_in_minutes[name=?]", "maintenance[length_in_minutes]"

      assert_select "input#maintenance_user_id[name=?]", "maintenance[user_id]"

      assert_select "input#maintenance_service_status_id[name=?]", "maintenance[service_status_id]"
    end
  end
end
