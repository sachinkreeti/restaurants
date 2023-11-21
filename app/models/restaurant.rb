class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :menus
  has_many :reservations
  has_many :employees
  has_many :ingredients
  has_many :suppliers
  has_many :orders
  has_many :events
  has_many :promotions
end
