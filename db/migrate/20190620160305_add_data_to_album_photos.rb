class AddDataToAlbumPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :album_photos, :data, :string
  end
end
