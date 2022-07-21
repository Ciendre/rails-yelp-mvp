class RestaurantsController < ApplicationController
  def top
    @restaurants = Restaurant.where(stars: 5)
  end

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
