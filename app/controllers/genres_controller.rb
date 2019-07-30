class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :destroy]

  def new 
    @genre = Genre.new
  end

  def create 
    @genre = Genre.new(genre_params)
    @genre.save
  end


  def index
    @genres = Genre.all
  end

  def show 
    
  end

  def destroy
    @genre.destroy
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require('genre').permit(:name)
  end
end
