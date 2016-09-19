class Category < ApplicationRecord
  has_many :category_monsters
  has_many :monsters, through: :category_monsters
end
