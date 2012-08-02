require 'spec_helper'

describe "migrations/show" do
  before(:each) do
    @migration = assign(:migration, stub_model(Migration,
      :from_pond => "From Pond",
      :from_pond_latitude => "From Pond Latitude",
      :from_pond_longitude => "From Pond Longitude",
      :to_pond => "To Pond",
      :to_pond_latitude => "To Pond Latitude",
      :to_pond_longitude => "To Pond Longitude"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/From Pond/)
    rendered.should match(/From Pond Latitude/)
    rendered.should match(/From Pond Longitude/)
    rendered.should match(/To Pond/)
    rendered.should match(/To Pond Latitude/)
    rendered.should match(/To Pond Longitude/)
  end
end
