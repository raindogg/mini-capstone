class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :carted_products
  has_many :monsters, through: :carted_products

  def currently_carted
    carted_products.where(status: "carted")
  end
end
