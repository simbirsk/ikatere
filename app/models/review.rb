class Review < ActiveRecord::Base
  belongs_to :location
  belongs_to :user

  attr_accessible :body, :user_id, :location_id

  validates :body, :presence => true
  validates :user_id, :presence => true
  validates :location_id, :presence => true
end
