class CartedProduct < ApplicationRecord
  belongs_to :monster
  belongs_to :user
  belongs_to :order, option: true
end
