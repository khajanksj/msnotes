class CreateCourseTags < ActiveRecord::Migration[6.0]
  def change
    create_table :course_tags do |t|
      t.string :course
      t.string :subject
      t.boolean :is_active

      t.timestamps
    end
  end
end
