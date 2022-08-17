class ReviewsController < ApplicationController
  def new
    set_restaurant
    @review = Review.new
  end

  def create
    set_restaurant
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      redirect_to restaurant_path(@review)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :restaurant_id)
  end
end
