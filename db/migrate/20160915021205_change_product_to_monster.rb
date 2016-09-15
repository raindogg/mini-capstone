class ChangeProductToMonster < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :product_id, :monster_id
  end
end
