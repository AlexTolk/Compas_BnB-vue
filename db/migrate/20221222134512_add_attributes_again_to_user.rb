class AddAttributesAgainToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :avatar, :string
    add_column :users, :phone_number, :string
    add_column :users, :gender, :string
    add_column :users, :emergency_contact, :string
  end
end
