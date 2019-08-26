class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
