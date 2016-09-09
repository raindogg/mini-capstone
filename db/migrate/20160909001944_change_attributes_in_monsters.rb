class ChangeAttributesInMonsters < ActiveRecord::Migration[5.0]
  def change
    change_column :monsters, :description, :text
    change_column :monsters, :price, :decimal, precision: 10, scale: 2
  end
end
