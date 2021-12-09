class Teacher < ApplicationRecord

  enum grade: { 'kg' =>  0, 'nursery' => 1, 'prep' => 2, 'one' => 3, 'two' => 4, 'three' => 5, 'four' => 6, 'five' => 7, 'six' => 8, 'seven' => 9, 'eight' => 10, 'nine' => 11, 'ten' => 12 }
  enum gender: { 'Male' =>  "male", 'Female' => "female" }

  validates_length_of :name, minimum: 4, maximum: 50, allow_blank: false
  validates_length_of :address, minimum: 4, maximum: 100, allow_blank: false
  validates_numericality_of :age, less_than_or_equal_to: 60, greater_than: 0, allow_blank: false

  ransacker :grade do
    Arel.sql("to_char(\"#{table_name}\".\"grade\", '99999999')")
  end
end
