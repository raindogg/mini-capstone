class Monster < ApplicationRecord
  def discounted?
    price <= 30 
  end

  def tax
    price * 0.09
  end

  def total 
    (price + tax).round(2)
  end
end
