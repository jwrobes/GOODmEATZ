class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @new_restaurant = new_restaurant
    @restaurant = Restaurant.new
  end

  private

  def new_restaurant
    OpenStruct.new(new_restaurant_params)
  end

  def new_restaurant_params
    params.require(:result).permit!
  end
end
