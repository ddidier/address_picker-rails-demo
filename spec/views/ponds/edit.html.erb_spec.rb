require 'spec_helper'

describe "ponds/edit" do
  before(:each) do
    @pond = assign(:pond, stub_model(Pond,
      :address => "MyString",
      :address_latitude => "MyString",
      :address_longitude => "MyString"
    ))
  end

  it "renders the edit pond form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ponds_path(@pond), :method => "post" do
      assert_select "input#pond_address", :name => "pond[address]"
      assert_select "input#pond_address_latitude", :name => "pond[address_latitude]"
      assert_select "input#pond_address_longitude", :name => "pond[address_longitude]"
    end
  end
end
