class Activity < ActiveRecord::Base
  has_many :animals
  attr_accessible :animal_id, :name, :price
end
