class Animal < ActiveRecord::Base
  belongs_to :visit
  attr_accessible :name, :specie, :visit_id
end
