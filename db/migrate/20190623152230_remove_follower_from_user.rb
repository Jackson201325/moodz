class RemoveFollowerFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :follower, foreign_key: true
  end
end
