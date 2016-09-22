class CartedProduct < ApplicationRecord
  validates :quantity, presence: true
  validates :quantity, numericality: {greater_than: 0}

  belongs_to :monster
  belongs_to :user
  belongs_to :order, optional: true

  def subtotal
    quantity * monster.price
  end
end
