class Monster < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, presence: true
  validates :description, length: {in: 10..300}

  belongs_to :supplier
  has_many :images
  has_many :category_monsters
  has_many :carted_products
  has_many :categories, through: :category_monsters
  has_many :orders, through: :carted_products
  
  # could also have done has_many :users, through: :carted_products
  # which would be a many-to-many association.
  def discounted?
    price <= 30 
  end

  def tax
    price * 0.09
  end

  def total 
    (price + tax)
  end

  def top_image
    first_image = images.first
    if first_image
      images.first.url
    else
      "https://s-media-cache-ak0.pinimg.com/236x/a1/8a/8b/a18a8b5a3ba04b08ddcc97ebfc4d145c.jpg"
    end
  end
end
