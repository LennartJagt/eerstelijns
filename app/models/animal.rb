class Animal < ActiveRecord::Base
  belongs_to :visit
  has_many :animal_activities
  has_many :activities, :through => :animal_activities
  attr_accessible :name, :specie, :visit_id, :activities_attributes
end
