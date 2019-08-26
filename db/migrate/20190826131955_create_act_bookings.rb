class CreateActBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :act_bookings do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :activity, foreign_key: true
      t.references :review, foreign_key: true

      t.timestamps
    end
  end
end
