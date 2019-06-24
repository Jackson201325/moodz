class AddFieldsToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :first_name, :string
    add_column :artists, :last_name, :string
    add_column :artists, :date_of_birth, :string
    add_column :artists, :bio, :text
    add_reference :artists, :artist_album, index: true
    add_reference :artists, :fan, index: true 
    add_reference :artists, :artist_song, index: true
  end
end
