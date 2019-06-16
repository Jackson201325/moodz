class CreateUserSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_songs do |t|

      t.timestamps
    end
  end
end
