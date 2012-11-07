class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :nickname
      t.string :bankname
      t.string :routing
      t.string :checking

      t.timestamps
    end
  end
end
