class RemoveCreatedAtColumnReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :created_at
  end
end
