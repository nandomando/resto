class RestaurantsController < ApplicationController
  def index
    if params[:query].present?
      @restaurants = Restaurant.global_search("%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end
  end

  def like
    @restaurant = Restaurant.find(params[:id])
    if current_user.favorited?(@restaurant)
      current_user.unfavorite(@restaurant)
      result = {liked: false}
    else
      current_user.favorite(@restaurant)
      result = {liked: true}
    end
    render json: result
  end

  def favorites
    @favorites_rest = current_user.favorited_by_type('restaurant')
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
