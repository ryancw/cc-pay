class AddCardtypenumberToShows < ActiveRecord::Migration
  def change
    add_column :shows, :cardtype, :string

    add_column :shows, :cardnumber, :string

  end
end
