class Monster < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :category_monsters
  has_many :categories, through: :category_monsters
  has_many :carted_products
  
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
