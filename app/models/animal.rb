class Animal < ActiveRecord::Base
  belongs_to :visit
  has_many :activities
  attr_accessible :name, :specie, :visit_id, :activities_attributes
end
