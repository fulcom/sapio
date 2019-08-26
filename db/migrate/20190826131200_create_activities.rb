class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :category
      t.string :name
      t.string :description
      t.string :photo_one
      t.string :photo_two
      t.string :photo_three
      t.boolean :favorite
      t.date :start_date
      t.date :end_date
      t.float :avg_rating
      t.references :place, foreign_key: true
      t.references :subscription, foreign_key: true

      t.timestamps
    end
  end
end
