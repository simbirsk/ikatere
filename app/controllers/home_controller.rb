class HomeController < ApplicationController
  def index
    @json = Location.all.to_gmaps4rails
    @user = current_user
  end
end
