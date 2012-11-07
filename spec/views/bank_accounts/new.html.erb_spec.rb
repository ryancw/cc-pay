require 'spec_helper'

describe "bank_accounts/new" do
  before(:each) do
    assign(:bank_account, stub_model(BankAccount,
      :nickname => "MyString",
      :bankname => "MyString",
      :routing => "MyString",
      :checking => "MyString"
    ).as_new_record)
  end

  it "renders new bank_account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bank_accounts_path, :method => "post" do
      assert_select "input#bank_account_nickname", :name => "bank_account[nickname]"
      assert_select "input#bank_account_bankname", :name => "bank_account[bankname]"
      assert_select "input#bank_account_routing", :name => "bank_account[routing]"
      assert_select "input#bank_account_checking", :name => "bank_account[checking]"
    end
  end
end
