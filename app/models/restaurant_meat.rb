class RestaurantMeat < ApplicationRecord
  belongs_to :meat
  belongs_to :restaurant
end
