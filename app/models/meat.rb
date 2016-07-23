class Meat < ApplicationRecord
  has_many :restaurant_meats
  has_many :restaurants, through: :restaurant_meats
end
