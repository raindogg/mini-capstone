class ChangeProductIdToMonsterId < ActiveRecord::Migration[5.0]
  def change
    rename_column :carted_products, :product_id, :monster_id
  end
end
