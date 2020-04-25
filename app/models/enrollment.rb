class Enrollment < ActiveRecord::Base
  belongs_to :course
  belongs_to :student

  validates :course_id, presence: true
  validates_associated :course
end