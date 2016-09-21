class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :monsters, through: :carted_products
  
  def pretty_created_at 
    created_at.strftime('%A, %b %d') 
  end

  def id_present_to_customer
    34000 + id
  end

  def calculate_totals
    subtotal_collector = 0 

    carted_products.each do |item|
      subtotal_collector += item.subtotal
    end

    self.subtotal = subtotal_collector
    self.tax = subtotal_collector * 0.09
    self.total = subtotal_collector + tax
    save
  end
end
