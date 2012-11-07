require 'spec_helper'

describe "blerts/new" do
  before(:each) do
    assign(:blert, stub_model(Blert,
      :alerttype => "MyString",
      :contact => "MyString"
    ).as_new_record)
  end

  it "renders new blert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blerts_path, :method => "post" do
      assert_select "input#blert_alerttype", :name => "blert[alerttype]"
      assert_select "input#blert_contact", :name => "blert[contact]"
    end
  end
end
