class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :item

  attr_accessor :quantity

  validates :quantity, numericality: { greater_than: 0 }
end
