class Review < ActiveRecord::Base
  belongs_to :location
  belongs_to :user
  attr_accessible :body
end
