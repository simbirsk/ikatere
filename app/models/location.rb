class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :name, :user_id, :terrain_id
  
  validates :name, :presence => true
  validates :address, :presence => true, :unless => lambda { longitude? && latitude? }
  validates :longitude, :presence => true, :unless => lambda { address? }
  validates :latitude, :presence => true, :unless => lambda { address? }
  validates :user_id, :presence => true
  validates :terrain_id, :presence => true
  validates_presence_of :terrain_id
  
  acts_as_gmappable :validation => false

  def gmaps4rails_address
    address
  end
  
  belongs_to :user
  belongs_to :terrain
  has_many :reviews
  has_many :shoals
  has_many :fishes, :through => :shoals
end
