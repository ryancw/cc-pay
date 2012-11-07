class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :type
      t.string :contact

      t.timestamps
    end
    add_index :alerts, [:user_id, :created_at]
  end
end
