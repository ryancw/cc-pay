class AddIndexToBankAlerts < ActiveRecord::Migration
  def change
    add_column :blerts, :user_id, :integer
    add_column :bank_accounts, :user_id, :integer
    add_index :blerts, [:user_id, :created_at]
    add_index :bank_accounts, [:user_id, :created_at]
  end
end
