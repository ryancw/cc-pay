class CreateBlerts < ActiveRecord::Migration
  def change
    create_table :blerts do |t|
      t.string :alerttype
      t.string :contact

      t.timestamps
    end
  end
end
