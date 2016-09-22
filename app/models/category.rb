class Category < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :category_monsters
  has_many :monsters, through: :category_monsters
end
