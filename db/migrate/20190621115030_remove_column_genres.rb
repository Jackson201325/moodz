class RemoveColumnGenres < ActiveRecord::Migration[5.2]
  def change
    remove_column :genres, :artist_album_id
  end
end
