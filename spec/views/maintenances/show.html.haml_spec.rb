require 'rails_helper'

RSpec.describe "maintenances/show", type: :view do
  before(:each) do
    @maintenance = assign(:maintenance, Maintenance.create!(
      :title => "Title",
      :description => "MyText",
      :identifier => "Identifier",
      :length_in_minutes => 2,
      :user_id => 3,
      :service_status_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Identifier/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
