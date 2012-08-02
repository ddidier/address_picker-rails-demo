require 'spec_helper'

describe "migrations/index" do
  before(:each) do
    assign(:migrations, [
      stub_model(Migration,
        :from_pond => "From Pond",
        :from_pond_latitude => "From Pond Latitude",
        :from_pond_longitude => "From Pond Longitude",
        :to_pond => "To Pond",
        :to_pond_latitude => "To Pond Latitude",
        :to_pond_longitude => "To Pond Longitude"
      ),
      stub_model(Migration,
        :from_pond => "From Pond",
        :from_pond_latitude => "From Pond Latitude",
        :from_pond_longitude => "From Pond Longitude",
        :to_pond => "To Pond",
        :to_pond_latitude => "To Pond Latitude",
        :to_pond_longitude => "To Pond Longitude"
      )
    ])
  end

  it "renders a list of migrations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "From Pond".to_s, :count => 2
    assert_select "tr>td", :text => "From Pond Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "From Pond Longitude".to_s, :count => 2
    assert_select "tr>td", :text => "To Pond".to_s, :count => 2
    assert_select "tr>td", :text => "To Pond Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "To Pond Longitude".to_s, :count => 2
  end
end
