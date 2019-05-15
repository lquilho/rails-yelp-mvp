class ReviewsController < ApplicationController
  before_action :find_restaurant

  def new           # GET /restaurants/new
    @review = Review.new
  end

  def create        # POST /restaurants
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    if @review.save
      redirect_to @restaurant, notice: 'Review created'
    else
      render :new
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
