class Shoal < ActiveRecord::Base
  attr_accessible :fish_id, :location_id, :technique_id

  belongs_to :fish
  belongs_to :location

  has_and_belongs_to_many :techniques
end
