require 'spec_helper'

describe "ponds/show" do
  before(:each) do
    @pond = assign(:pond, stub_model(Pond,
      :address => "Address",
      :address_latitude => "Address Latitude",
      :address_longitude => "Address Longitude"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    rendered.should match(/Address Latitude/)
    rendered.should match(/Address Longitude/)
  end
end
