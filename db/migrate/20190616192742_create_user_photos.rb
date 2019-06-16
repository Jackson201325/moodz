class CreateUserPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :user_photos do |t|
      t.references :user
      t.string :data

      t.timestamps
    end
  end
end
