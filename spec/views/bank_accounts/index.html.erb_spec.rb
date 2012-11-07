require 'spec_helper'

describe "bank_accounts/index" do
  before(:each) do
    assign(:bank_accounts, [
      stub_model(BankAccount,
        :nickname => "Nickname",
        :bankname => "Bankname",
        :routing => "Routing",
        :checking => "Checking"
      ),
      stub_model(BankAccount,
        :nickname => "Nickname",
        :bankname => "Bankname",
        :routing => "Routing",
        :checking => "Checking"
      )
    ])
  end

  it "renders a list of bank_accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    assert_select "tr>td", :text => "Bankname".to_s, :count => 2
    assert_select "tr>td", :text => "Routing".to_s, :count => 2
    assert_select "tr>td", :text => "Checking".to_s, :count => 2
  end
end
