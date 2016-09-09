class AddStockToMonsters < ActiveRecord::Migration[5.0]
  def change
    add_column :monsters, :in_stock, :boolean
  end
end
