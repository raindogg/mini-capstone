class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :origin
      t.integer :price
      t.string :description
      t.string :image
      t.integer :danger_rating

      t.timestamps
    end
  end
end
