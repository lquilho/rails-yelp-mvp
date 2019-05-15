class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all # GET /restaurants
  end

  def show          # GET /restaurants/:id
    @restaurant = Restaurant.find(params[:id])
  end

  def new           # GET /restaurants/new
    @restaurant = Restaurant.new
  end

  def create        # POST /restaurants
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant created'
    else
      render :new
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:address, :category, :name, :phone_number)
  end

  # def edit          # GET /restaurants/:id/edit
  # end

  # def update        # PATCH /restaurants/:id
  # end

  # def destroy       # DELETE /restaurants/:id
  # end
end
