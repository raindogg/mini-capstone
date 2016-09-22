class User < ApplicationRecord
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: {with: /\w{2,}[@]\w+[.]\w{2,3}/, message: "Must be valid."}
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :password, length: {in: 6..20}

  has_secure_password
  has_many :orders
  has_many :carted_products
  has_many :monsters, through: :carted_products

  def currently_carted
    carted_products.where(status: "carted")
  end
end
