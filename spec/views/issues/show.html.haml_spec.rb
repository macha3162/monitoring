require 'rails_helper'

RSpec.describe "issues/show", type: :view do
  before(:each) do
    @issue = assign(:issue, Issue.create!(
      :state => "State",
      :service_status_id => "",
      :user_id => 2,
      :identifier => "Identifier"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/State/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Identifier/)
  end
end
