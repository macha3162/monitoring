require 'rails_helper'

RSpec.describe "issues/edit", type: :view do
  before(:each) do
    @issue = assign(:issue, Issue.create!(
      :state => "MyString",
      :service_status_id => "",
      :user_id => 1,
      :identifier => "MyString"
    ))
  end

  it "renders the edit issue form" do
    render

    assert_select "form[action=?][method=?]", issue_path(@issue), "post" do

      assert_select "input#issue_state[name=?]", "issue[state]"

      assert_select "input#issue_service_status_id[name=?]", "issue[service_status_id]"

      assert_select "input#issue_user_id[name=?]", "issue[user_id]"

      assert_select "input#issue_identifier[name=?]", "issue[identifier]"
    end
  end
end
