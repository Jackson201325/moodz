class PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:edit, :update, :show, :destroy]

  def new 
    @playlist = Playlist.new
  end

  def create 
    @playlist = Playlist.new(playlist_params)
    @playlist.save
  end

  def edit
    
  end

  def update
    @playlist.update(playlist_params)
  end

  def index
    @playlists = Playlist.all
  end

  def show 
    
  end

  def destroy
    @playlist.destroy
  end

  private

  def set_playlist
    @playlist = Playlist.find(params[:id])
  end

  def playlist_params
    params.require('playlist').permit(:title, :description, :user_id)
  end
end
