require 'rails_helper'

RSpec.describe "issue_updates/edit", type: :view do
  before(:each) do
    @issue_update = assign(:issue_update, IssueUpdate.create!(
      :state => "MyString",
      :issue => nil,
      :user => nil,
      :identifier => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit issue_update form" do
    render

    assert_select "form[action=?][method=?]", issue_update_path(@issue_update), "post" do

      assert_select "input#issue_update_state[name=?]", "issue_update[state]"

      assert_select "input#issue_update_issue_id[name=?]", "issue_update[issue_id]"

      assert_select "input#issue_update_user_id[name=?]", "issue_update[user_id]"

      assert_select "input#issue_update_identifier[name=?]", "issue_update[identifier]"

      assert_select "textarea#issue_update_description[name=?]", "issue_update[description]"
    end
  end
end
