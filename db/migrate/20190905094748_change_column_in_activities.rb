class ChangeColumnInActivities < ActiveRecord::Migration[5.2]
  def change
    rename_column :activities, :subscription_id, :subscription_number
  end
end
