class UserSongsController < ApplicationController
  before_action :set_user_song, only: [:show, :destroy]

  def create 
    @artist_song = ArtistSong.find(params[:id])
    @user_song = UserSong.new(
      :user_id = current_user
      :artist_song_id = @artist_song.artist_id
    )
    @user_song.save
  end


  def index
    @user_songs = UserSong.all
  end

  def show 
    
  end

  def destroy
    @user_song.destroy
  end

  private

  def set_user_song
    @user_song = UserSong.find(params[:id])
  end

end
