class Source < ApplicationRecord
  has_many :restaurant_sources
  has_many :restaurants, through: :restaurant_sources
end
