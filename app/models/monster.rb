class Monster < ApplicationRecord
  def sale_message
    if price <= 2 
      message = "Discount monster!"
    else
      message = "This monster is for sale."
    end
  end

  def tax
    price * 0.09
  end

  def total 
    (price + tax).round(2)
  end
end
