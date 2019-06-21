# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_21_103455) do

  create_table "album_photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "data"
    t.integer "artist_album_id"
    t.index ["artist_album_id"], name: "index_album_photos_on_artist_album_id"
  end

  create_table "artist_album_likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "artist_album_id"
    t.integer "user_id"
    t.index ["artist_album_id"], name: "index_artist_album_likes_on_artist_album_id"
    t.index ["user_id"], name: "index_artist_album_likes_on_user_id"
  end

  create_table "artist_albums", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "genre_id"
    t.integer "artist_song_like_id"
    t.integer "artist_id"
    t.index ["artist_id"], name: "index_artist_albums_on_artist_id"
    t.index ["artist_song_like_id"], name: "index_artist_albums_on_artist_song_like_id"
    t.index ["genre_id"], name: "index_artist_albums_on_genre_id"
  end

  create_table "artist_song_likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "artist_song_id"
    t.index ["artist_song_id"], name: "index_artist_song_likes_on_artist_song_id"
    t.index ["user_id"], name: "index_artist_song_likes_on_user_id"
  end

  create_table "artist_songs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "artist_album_id"
    t.integer "genre_id"
    t.integer "artist_album_like_id"
    t.integer "artist_id"
    t.index ["artist_album_id"], name: "index_artist_songs_on_artist_album_id"
    t.index ["artist_album_like_id"], name: "index_artist_songs_on_artist_album_like_id"
    t.index ["artist_id"], name: "index_artist_songs_on_artist_id"
    t.index ["genre_id"], name: "index_artist_songs_on_genre_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "date_of_birth"
    t.text "bio"
    t.integer "artist_album_id"
    t.integer "fan_id"
    t.integer "artist_song_id"
    t.string "username"
    t.index ["artist_album_id"], name: "index_artists_on_artist_album_id"
    t.index ["artist_song_id"], name: "index_artists_on_artist_song_id"
    t.index ["email"], name: "index_artists_on_email", unique: true
    t.index ["fan_id"], name: "index_artists_on_fan_id"
    t.index ["reset_password_token"], name: "index_artists_on_reset_password_token", unique: true
  end

  create_table "fans", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_fans_on_user_id"
  end

  create_table "followers", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_followers_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "artist_album_id"
  end

  create_table "idols", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "artist_id"
    t.index ["artist_id"], name: "index_idols_on_artist_id"
  end

  create_table "playlist_likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "playlist_id"
    t.index ["playlist_id"], name: "index_playlist_likes_on_playlist_id"
    t.index ["user_id"], name: "index_playlist_likes_on_user_id"
  end

  create_table "playlist_photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.text "description"
    t.integer "playlist_photo_id"
    t.integer "artist_song_id"
    t.integer "playlist_like_id"
    t.index ["artist_song_id"], name: "index_playlists_on_artist_song_id"
    t.index ["playlist_like_id"], name: "index_playlists_on_playlist_like_id"
    t.index ["playlist_photo_id"], name: "index_playlists_on_playlist_photo_id"
  end

  create_table "user_photos", force: :cascade do |t|
    t.integer "user_id"
    t.string "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_photos_on_user_id"
  end

  create_table "user_songs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "artist_song_id"
    t.index ["artist_song_id"], name: "index_user_songs_on_artist_song_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.integer "follower_id"
    t.integer "playlist_id"
    t.integer "user_song_id"
    t.integer "idol_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["follower_id"], name: "index_users_on_follower_id"
    t.index ["idol_id"], name: "index_users_on_idol_id"
    t.index ["playlist_id"], name: "index_users_on_playlist_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_song_id"], name: "index_users_on_user_song_id"
  end

end
