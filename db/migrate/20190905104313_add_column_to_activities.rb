class AddColumnToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :subscription_number, :integer
  end
end
