require 'spec_helper'

describe "bank_accounts/show" do
  before(:each) do
    @bank_account = assign(:bank_account, stub_model(BankAccount,
      :nickname => "Nickname",
      :bankname => "Bankname",
      :routing => "Routing",
      :checking => "Checking"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nickname/)
    rendered.should match(/Bankname/)
    rendered.should match(/Routing/)
    rendered.should match(/Checking/)
  end
end
