class AddCorrectTimestampColumnToReviews < ActiveRecord::Migration[6.1]
  def change
    add_timestamps :reviews, null: true
  end
end
