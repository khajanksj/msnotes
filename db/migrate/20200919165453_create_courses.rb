class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :course
      t.string :duration
      t.integer :fee
      t.string :instructor
      t.string :image
      t.boolean :is_active

      t.timestamps
    end
  end
end
