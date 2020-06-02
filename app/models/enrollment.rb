class Enrollment < ActiveRecord::Base
  belongs_to :course
  belongs_to :student

  has_many :grades

  validates :course_id, presence: true
  validates :student_id, presence: true
end