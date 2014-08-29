class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :image
      t.string :video
      t.string :duration
      t.text :description
      t.references :course, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
