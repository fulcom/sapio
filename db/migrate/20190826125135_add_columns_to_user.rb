class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :photo, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :gender, :string
    add_column :users, :address, :string
    add_column :users, :zip_code, :string
    add_column :users, :city, :string
  end
end
