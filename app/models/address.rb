class Address < ActiveRecord::Base
  belongs_to :practice
  attr_accessible :practice_id, :street, :street_number, :zip_code , :town
end
