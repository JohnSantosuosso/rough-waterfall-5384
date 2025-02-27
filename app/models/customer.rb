class Customer < ApplicationRecord
  belongs_to :supermarket
  has_many :customer_items
  has_many :items, through: :customer_items

  def items_total_price
    items.sum(:price)
  end

  def all_purchases
    self.items
  end
end