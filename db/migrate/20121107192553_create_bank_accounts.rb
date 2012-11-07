class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :nickname
      t.string :bankname
      t.string :routing
      t.string :checking

      t.timestamps
    end
    add_index :bank_accounts, [:user_id, :created_at]
  end
end
