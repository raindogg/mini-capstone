class AddIdToMonsters < ActiveRecord::Migration[5.0]
  def change
    add_column :monsters, :supplier_id, :integer
  end
end
