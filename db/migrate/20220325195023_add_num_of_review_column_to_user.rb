class AddNumOfReviewColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :review_count, :integer
  end
end
