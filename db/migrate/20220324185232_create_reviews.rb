class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :puzzle_id
      t.string :purchase_reason
      t.string :purchase_location
      t.boolean :poster
      t.integer :piece_quality
      t.string :piece_quality_desc
      t.integer :fit_quality
      t.string :fit_quality_desc
      t.integer :finished_quality
      t.string :finished_quality_desc
      t.integer :difficulty
      t.string :difficulty_desc
      t.boolean :recommend
      t.string :recommend_desc
      t.timestamp :created_at
    end
  end
end
