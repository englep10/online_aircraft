class ReviewsController < ApplicationController

  def create
    @review = Review.create(review_params)
    aircraft = @review.aircraft

    redirect_to aircraft
  end

  def destroy
    @review = Review.find(params[:id])
    aircraft = @review.aircraft
    @review.destroy
    redirect_to aircraft_path
  end

  private
    def review_params
      params.require(:review).permit(:aircraft_id, :user_id, :comment, :created_at, :rating)
    end
end
