class Teacher < ApplicationRecord
  enum grade: { 'KG' =>  "kg", 'Nursery' => "nursery", 'Prep' => "prep", 'One' => "1", 'Two' => "2", 'Three' => "3", 'Four' => "4", 'Five' => "5", 'Six' => "6", 'Seven' => "7", 'Eight' => "8", 'Nine' => "9", 'Ten' => "10" }
  enum gender: { 'Male' =>  "male", 'Female' => "female" }
  validates_length_of :name, minimum: 4, maximum: 50, allow_blank: false
  validates_length_of :address, minimum: 4, maximum: 100, allow_blank: false
  validates_numericality_of :age, less_than_or_equal_to: 60, greater_than: 0, allow_blank: false
end
