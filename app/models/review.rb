class Review < ActiveRecord::Base
  belongs_to :location
  belongs_to :user

  attr_accessible :body, :user_id, :location_id

  validates :body, :presence => true
  validates :user_id, :presence => true
  validates :location_id, :presence => true
  validates_uniqueness_of :user_id, :scope => :location_id #TODO criar notificaçom do erro (locations/show)
end
