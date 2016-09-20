class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products

  def pretty_created_at 
    created_at.strftime('%A, %b %d') 
  end

  def id_present_to_customer
    34000 + id
  end


  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def update_carted_products
    products = User.find(user_id).carted_products
    carted = products.where('status LIKE ?', 'carted')
    carted.each do |item|
      item.update(status: "purchased", order_id: id)
    end
  end
end
