require 'spec_helper'

describe "alerts/edit" do
  before(:each) do
    @alert = assign(:alert, stub_model(Alert,
      :type => "",
      :contact => "MyString"
    ))
  end

  it "renders the edit alert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alerts_path(@alert), :method => "post" do
      assert_select "input#alert_type", :name => "alert[type]"
      assert_select "input#alert_contact", :name => "alert[contact]"
    end
  end
end
