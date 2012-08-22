class Fish < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :shoals
  has_many :locations, :through => :shoals
end
