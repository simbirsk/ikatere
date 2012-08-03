class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name
  
  validates :name, :presence => true
  validates :longitude, :presence => true
  validates :latitude, :presence => true
  
  acts_as_gmappable

  def gmaps4rails_address
    address
  end
  
  belongs_to :user
end
