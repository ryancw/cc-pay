require 'spec_helper'

describe "blerts/show" do
  before(:each) do
    @blert = assign(:blert, stub_model(Blert,
      :alerttype => "Alerttype",
      :contact => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Alerttype/)
    rendered.should match(/Contact/)
  end
end
