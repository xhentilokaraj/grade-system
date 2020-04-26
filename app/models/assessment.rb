class Assessment < ActiveRecord::Base
  belongs_to :course

  has_many :grades

  validates :course_id, presence: true
  validates_associated :course
end