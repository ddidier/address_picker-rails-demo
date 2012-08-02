require 'spec_helper'

describe "migrations/edit" do
  before(:each) do
    @migration = assign(:migration, stub_model(Migration,
      :from_pond => "MyString",
      :from_pond_latitude => "MyString",
      :from_pond_longitude => "MyString",
      :to_pond => "MyString",
      :to_pond_latitude => "MyString",
      :to_pond_longitude => "MyString"
    ))
  end

  it "renders the edit migration form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => migrations_path(@migration), :method => "post" do
      assert_select "input#migration_from_pond", :name => "migration[from_pond]"
      assert_select "input#migration_from_pond_latitude", :name => "migration[from_pond_latitude]"
      assert_select "input#migration_from_pond_longitude", :name => "migration[from_pond_longitude]"
      assert_select "input#migration_to_pond", :name => "migration[to_pond]"
      assert_select "input#migration_to_pond_latitude", :name => "migration[to_pond_latitude]"
      assert_select "input#migration_to_pond_longitude", :name => "migration[to_pond_longitude]"
    end
  end
end
