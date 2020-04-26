class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.integer 'grade'
      t.references 'enrollment'
      t.references 'assessment'
    end
  end
end
