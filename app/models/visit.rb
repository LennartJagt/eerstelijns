class Visit < ActiveRecord::Base
  belongs_to :practice
  has_many :animals, :dependent => :destroy
  accepts_nested_attributes_for :animals, :allow_destroy => true
  attr_accessible :date, :practice_id, :animals_attributes
end
