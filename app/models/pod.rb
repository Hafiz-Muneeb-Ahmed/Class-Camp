class Pod < ApplicationRecord
  validates_length_of :name, minimum: 4, maximum: 50, allow_blank: false
  validates_length_of :location, minimum: 4, maximum: 100, allow_blank: false
  validates_length_of :zipcode, minimum: 4, maximum: 10, allow_blank: false
end
