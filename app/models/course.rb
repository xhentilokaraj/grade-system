class Course < ActiveRecord::Base

  has_many :assessments
  has_many :enrollments

end