class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :student, index: true
      t.references :course, index: true
      t.text :text
      t.integer :rating_out_of_ten

      t.timestamps
    end
  end
end
