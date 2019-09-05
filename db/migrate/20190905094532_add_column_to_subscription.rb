class AddColumnToSubscription < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :subscription_number, :integer
  end
end
