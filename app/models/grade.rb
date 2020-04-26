class Grade < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :assessment

  validates :enrollment_id, presence: true
  validates_associated :enrollment
end