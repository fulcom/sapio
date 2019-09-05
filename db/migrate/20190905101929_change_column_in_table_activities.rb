class ChangeColumnInTableActivities < ActiveRecord::Migration[5.2]
  def change
    rename_column :activities, :subscription_number, :subscription_id
  end
end
