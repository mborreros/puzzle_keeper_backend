class CreatePuzzles < ActiveRecord::Migration[6.1]
  def change
    create_table :puzzles do |t|
      t.string :title
      t.integer :pieces
      t.string :manufacturer
      t.string :style
      t.string :purchase_link 
      t.integer :price
      t.string :image
      t.boolean :owned
      # check functionality of timestamps
      t.timestamp :added_to_collection
    end
  end
end
