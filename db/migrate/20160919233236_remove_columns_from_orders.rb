class RemoveColumnsFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :quantity, :integer
    remove_column :orders, :monster_id, :integer
  end
end
