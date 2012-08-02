require 'spec_helper'

describe "ponds/new" do
  before(:each) do
    assign(:pond, stub_model(Pond,
      :address => "MyString",
      :address_latitude => "MyString",
      :address_longitude => "MyString"
    ).as_new_record)
  end

  it "renders new pond form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ponds_path, :method => "post" do
      assert_select "input#pond_address", :name => "pond[address]"
      assert_select "input#pond_address_latitude", :name => "pond[address_latitude]"
      assert_select "input#pond_address_longitude", :name => "pond[address_longitude]"
    end
  end
end
