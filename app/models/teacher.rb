class Teacher < ApplicationRecord
  enum gender: { 'Male' =>  "male", 'Female' => "female" }
  validates_length_of :name, minimum: 4, maximum: 50, allow_blank: false
  validates_length_of :address, minimum: 4, maximum: 100, allow_blank: false
  validates_numericality_of :age, less_than_or_equal_to: 60, greater_than: 0, allow_blank: false
end
