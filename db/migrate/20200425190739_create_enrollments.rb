class CreateEnrollments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrollments do |t|
      t.references 'course'
      t.references 'student'
    end
  end
end
