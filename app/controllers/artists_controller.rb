class ArtistsController < ApplicationController
  before_action :set_artist, only: [:edit, :update, :show, :destroy]

  def new 
    @artist = Artist.new
  end

  def create 
    @artist = Artist.new(artist_params)
    @artist.save
  end

  def edit
    
  end

  def update
    @artist.update(artist_params)
  end

  def index
    @artists = Artist.all
  end

  def show 
    
  end

  def destroy
    @artist.destroy
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require('artist').permit(:username, :email)
  end
end
