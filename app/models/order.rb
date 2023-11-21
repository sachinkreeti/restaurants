class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_items
  has_many :payments
end
