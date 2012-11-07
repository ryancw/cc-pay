require 'spec_helper'

describe "blerts/edit" do
  before(:each) do
    @blert = assign(:blert, stub_model(Blert,
      :alerttype => "MyString",
      :contact => "MyString"
    ))
  end

  it "renders the edit blert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => blerts_path(@blert), :method => "post" do
      assert_select "input#blert_alerttype", :name => "blert[alerttype]"
      assert_select "input#blert_contact", :name => "blert[contact]"
    end
  end
end
