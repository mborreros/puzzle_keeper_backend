class AddUserTimestampltColumnV2 < ActiveRecord::Migration[6.1]
  def change
    add_timestamps :users, null: true
  end
end
