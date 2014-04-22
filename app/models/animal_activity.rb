class AnimalActivity < ActiveRecord::Base
  belongs_to :animal
  belongs_to :activity
  attr_accessible :activity_id, :animal_id, :created_at
  
end
