class AddColumnToActBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :act_bookings, :used, :boolean, default: false
  end
end
