class HomeController < ApplicationController
  def index
    @json = Location.all.to_gmaps4rails
    @location = Location.new
  end
end
