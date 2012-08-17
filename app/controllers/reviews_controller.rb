class ReviewsController < ApplicationController
  def create
    @location = Location.find(params[:location_id])
    @review = @location.reviews.create(params[:review])
    redirect_to location_path(@location)
  end
end
