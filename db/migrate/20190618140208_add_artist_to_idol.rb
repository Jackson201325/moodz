class AddArtistToIdol < ActiveRecord::Migration[5.2]
  def change
    add_reference :idols, :artist, index: true
  end
end
