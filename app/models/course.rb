class Course < ActiveRecord::Base

  has_many :assessments
  has_many :enrollments

  validates :code, :presence => true, length: { maximum: 6, minimum: 5 }
  validates :name, :presence => true, length: { maximum: 50}
  validates :semester, :presence => true, length: { maximum: 10}
  validates :catalog_data, length: { maximum: 500}
end