require 'rails_helper'

RSpec.describe "service_statuses/show", type: :view do
  before(:each) do
    @service_status = assign(:service_status, ServiceStatus.create!(
      :name => "Name",
      :permalink => "Permalink",
      :color => "Color",
      :status_type => "Status Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Permalink/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Status Type/)
  end
end
