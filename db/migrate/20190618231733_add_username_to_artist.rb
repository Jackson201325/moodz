class AddUsernameToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :username, :string
  end
end
