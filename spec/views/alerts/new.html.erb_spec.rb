require 'spec_helper'

describe "alerts/new" do
  before(:each) do
    assign(:alert, stub_model(Alert,
      :type => "",
      :contact => "MyString"
    ).as_new_record)
  end

  it "renders new alert form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => alerts_path, :method => "post" do
      assert_select "input#alert_type", :name => "alert[type]"
      assert_select "input#alert_contact", :name => "alert[contact]"
    end
  end
end
