class ReviewsController < ApplicationController

  before_action :find_restaurant, only: [ :new, :create ]

  def create
    @review = @restaurant.reviews.new(reviews_params)
    @review.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
