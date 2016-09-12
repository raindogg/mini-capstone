class ChangePriceToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :monsters, :price, :decimal, precision: 10, scale: 2
  end
end
