class AddColumnToSubsBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :subs_bookings, :subscription_number, :integer
  end
end
