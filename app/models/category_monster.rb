class CategoryMonster < ApplicationRecord
  belongs_to :category
  belongs_to :monster
end
