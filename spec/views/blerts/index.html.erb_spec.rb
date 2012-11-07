require 'spec_helper'

describe "blerts/index" do
  before(:each) do
    assign(:blerts, [
      stub_model(Blert,
        :alerttype => "Alerttype",
        :contact => "Contact"
      ),
      stub_model(Blert,
        :alerttype => "Alerttype",
        :contact => "Contact"
      )
    ])
  end

  it "renders a list of blerts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Alerttype".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
  end
end
