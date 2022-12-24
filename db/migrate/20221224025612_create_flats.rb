class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.text :description
      t.text :details
      t.float :avg_rating
      t.float :price
      t.date :availability

      t.timestamps
    end
  end
end
