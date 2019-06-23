class DropFollowers < ActiveRecord::Migration[5.2]
  def change
    drop_table :followers
  end
end
