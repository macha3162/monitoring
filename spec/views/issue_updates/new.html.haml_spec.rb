require 'rails_helper'

RSpec.describe "issue_updates/new", type: :view do
  before(:each) do
    assign(:issue_update, IssueUpdate.new(
      :state => "MyString",
      :issue => nil,
      :user => nil,
      :identifier => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new issue_update form" do
    render

    assert_select "form[action=?][method=?]", issue_updates_path, "post" do

      assert_select "input#issue_update_state[name=?]", "issue_update[state]"

      assert_select "input#issue_update_issue_id[name=?]", "issue_update[issue_id]"

      assert_select "input#issue_update_user_id[name=?]", "issue_update[user_id]"

      assert_select "input#issue_update_identifier[name=?]", "issue_update[identifier]"

      assert_select "textarea#issue_update_description[name=?]", "issue_update[description]"
    end
  end
end
