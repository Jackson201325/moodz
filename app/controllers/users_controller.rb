class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]

  def new 
    @user = User.new
  end

  def create 
    @user = User.new(user_params)
    @user.save
  end

  def edit
    
  end

  def update
    @user.update(user_params)
  end

  def index
    @users = User.all
  end

  def show 
    
  end

  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require('user').permit(:username, :email)
  end

end
