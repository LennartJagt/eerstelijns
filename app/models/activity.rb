class Activity < ActiveRecord::Base
  has_many :animal_activities
  has_many :animals, :through => :animal_activities
  attr_accessible :animal_id, :name, :price
end
