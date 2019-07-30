class ArtistSongsController < ApplicationController
  before_action :set_artist_song, only: [:show, :destroy]

  def new 
    @artist_song = ArtistSong.new
  end

  def create 
    @artist_song = ArtistSong.new(artist_song_params)
    @artist_song.save
  end


  def index
    @artist_songs = ArtistSong.all
  end

  def show 
    
  end

  def destroy
    @artist_song.destroy
  end

  private

  def set_artist_song
    @artist_song = ArtistSong.find(params[:id])
  end

  def artist_song_params
    params.require('artist_song').permit(:title, :artist_id, :genre_id, :artist_album_id)
  end
end
