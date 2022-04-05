class AddedTimestampToPuzzles < ActiveRecord::Migration[6.1]
  def change
    add_timestamps :puzzles, null: true
  end
end
