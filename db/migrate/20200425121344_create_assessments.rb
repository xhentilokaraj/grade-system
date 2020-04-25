class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.string 'name'
      t.float 'weight'
      t.references 'course'
    end
  end
end
