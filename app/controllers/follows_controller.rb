class FollowsController < ApplicationController

  def new 
    @follow = Follow.new
  end

  def create 
    @follow = Follow.new(follow_params)
    @follow.save
  end

  def destroy
    @follow = Follow.find(params[:id])
    @follow.destroy
  end

  private

  def follow_params
    params.require('follow').permit(:follower_id, :followee_id)
  end
end
