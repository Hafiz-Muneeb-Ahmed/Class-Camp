class Child < ApplicationRecord
  belongs_to :parent
  enum gender: { 'Male' => "male", 'Female' => "female" }
  validates :name, :age, :grade, presence: true
  validates_length_of :address, minimum: 4, maximum: 100, allow_blank: false
  validates_numericality_of :age, less_than_or_equal_to: 22, greater_than: 0, allow_blank: false
end
