class AddDataToPhotoPlaylist < ActiveRecord::Migration[5.2]
  def change
    add_column :playlist_photos, :data, :string
  end
end
