class Assessment < ActiveRecord::Base
  belongs_to :course

  has_many :grades

  validates :course_id, presence: true

  validates :name, presence: true, length: { maximum: 30}
  validates :weight, presence: true, :inclusion => 0..1
end