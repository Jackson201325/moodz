class CreateUserSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_songs do |t|
      t.references :user
      t.references :artist_song
      t.references :playlist
      t.timestamps
    end
  end
end
