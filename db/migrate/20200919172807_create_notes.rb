class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :subject
      t.integer :chapter_no
      t.string :chapter_name
      t.text :body

      t.timestamps
    end
  end
end
