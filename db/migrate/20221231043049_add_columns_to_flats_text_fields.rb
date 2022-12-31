class AddColumnsToFlatsTextFields < ActiveRecord::Migration[7.0]
  def change
    add_column :flats, :ground_rules, :text
    add_column :flats, :cancellation, :text
  end
end
