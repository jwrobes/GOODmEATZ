class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @new_restaurant = new_restaurant
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = build_restaurant
    if @restaurant.save
      flash[:notice] = "Restaruant added!"
    else
      flash[:error] = "Error in adding restaruant!"
    end
    redirect_to root_path
  end

  private

  def build_restaurant
    Restaurant.new(restaurant_params)
  end

  def new_restaurant
    OpenStruct.new(new_restaurant_params)
  end

  def restaurant_params
    params.require(:restaurant).permit!
  end

  def new_restaurant_params
    params.require(:result).permit!
  end
end
