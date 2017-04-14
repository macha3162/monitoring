require 'rails_helper'

RSpec.describe "issue_updates/show", type: :view do
  before(:each) do
    @issue_update = assign(:issue_update, IssueUpdate.create!(
      :state => "State",
      :issue => nil,
      :user => nil,
      :identifier => "Identifier",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/State/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Identifier/)
    expect(rendered).to match(/MyText/)
  end
end
