class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :student_name
      t.integer :overall_score

      t.timestamps
    end
  end
end
