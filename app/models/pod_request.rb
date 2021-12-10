class PodRequest < ApplicationRecord
  belongs_to :child
  belongs_to :pod
  enum status: { 'pending' => 0, 'approved' => 1, 'rejected' => 2, 'archived' => 3 }
end
