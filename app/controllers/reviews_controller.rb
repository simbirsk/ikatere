class ReviewsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @location = Location.find(params[:location_id])
    @review = @location.reviews.create(params[:review])
    redirect_to location_path(@location)
  end
end
