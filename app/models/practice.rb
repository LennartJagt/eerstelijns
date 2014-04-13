class Practice < ActiveRecord::Base
  has_one :address, :dependent => :destroy
  has_many :visits, :dependent => :destroy
  accepts_nested_attributes_for :visits, :allow_destroy => true
  accepts_nested_attributes_for :address, :allow_destroy => true
  attr_accessible :name, :visits_attributes, :address_attributes
end
