class AddReferencesReview < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :act_booking, index: true
    remove_column :act_bookings, :review_id
  end
end
