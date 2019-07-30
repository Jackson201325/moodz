class PostsController < ApplicationController

  def new 
    @post = Post.new
  end

  def create 
    @post = Post.new(post_params)
    @post.save
  end

  def index
    @posts = Post.all
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require('post').permit(:title, :description, :user_id)
  end

end
