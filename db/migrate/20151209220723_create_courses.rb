class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :professor
      t.text :description
      t.string :poster_image

      t.timestamps
    end
  end
end
