class ReviewsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @location = Location.find(params[:location_id])
    @review = @location.reviews.create(params[:review])
    redirect_to location_path(@location)
  end

  # GET /locations/1/reviews/1/edit
  def edit
    @location = Location.find(params[:location_id])
    @review = @location.reviews.find(params[:id])
  end

  # PUT /locations/1/reviews/1
  # PUT /locations/1/reviews/1.json
  def update
    @location = Location.find(params[:location_id])
    @review = @location.reviews.find(params[:id])

    respond_to do |format|
      if @review.update_attributes(params[:review])
        format.html { redirect_to @location, notice: 'Your review was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
end
