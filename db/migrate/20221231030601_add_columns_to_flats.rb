class AddColumnsToFlats < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :city, :string
    add_column :flats, :country, :string
    add_column :flats, :state, :string
    add_column :flats, :zipcode, :integer
  end
end
