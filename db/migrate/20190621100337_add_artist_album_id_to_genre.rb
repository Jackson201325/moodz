class AddArtistAlbumIdToGenre < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :artist_album_id, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
