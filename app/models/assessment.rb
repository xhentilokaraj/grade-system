class Assessment < ActiveRecord::Base
  belongs_to :course

  validates :course_id, presence: true
  validates_associated :course
end