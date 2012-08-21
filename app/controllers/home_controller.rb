class HomeController < ApplicationController
  def index

    @json = Location.all.to_gmaps4rails do |location, marker|
      marker.infowindow render_to_string(:partial => "/locations/infowindow", :locals => { :object => location})
      marker.json({ :id => location.id })
    end
    @location = Location.new

  end
end
