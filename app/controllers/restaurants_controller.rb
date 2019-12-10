class RestaurantsController < ApplicationController
  def index
    if params[:query].present?
      @restaurants = Restaurant.global_search("%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render :new
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :photo, :description, :address)
  end
end
