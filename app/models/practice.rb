class Practice < ActiveRecord::Base
  has_many :visits, :dependent => :destroy
  accepts_nested_attributes_for :visits, :allow_destroy => true
  attr_accessible :name, :visits_attributes
end
