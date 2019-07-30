class ArtistAlbumsController < ApplicationController
  before_action :set_artist_album, only: [:edit, :update, :show, :destroy]

  def new 
    @artist_album = ArtistAlbum.new
  end

  def create 
    @artist_album = ArtistAlbum.new(artist_album_params)
    @artist_album.save
  end

  def edit
    
  end

  def update
    @artist_album.update(artist_album_params)
  end

  def index
    @artist_albums = ArtistAlbum.all
  end

  def show 
    
  end

  def destroy
    @artist_album.destroy
  end

  private

  def set_artist_album
    @artist_album = ArtistAlbum.find(params[:id])
  end

  def artist_album_params
    params.require('artist_album').permit(:title, :artist_id, :genre_id)
  end

end
