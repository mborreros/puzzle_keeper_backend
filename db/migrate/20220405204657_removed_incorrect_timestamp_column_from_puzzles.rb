class RemovedIncorrectTimestampColumnFromPuzzles < ActiveRecord::Migration[6.1]
  def change
    remove_column :puzzles, :added_to_collection
  end
end
