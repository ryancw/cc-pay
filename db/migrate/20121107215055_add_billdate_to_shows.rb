class AddBilldateToShows < ActiveRecord::Migration
  def change
    add_column :shows, :billdate, :date

    add_column :shows, :owed, :int

  end
end
