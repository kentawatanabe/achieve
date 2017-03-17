class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @follower = @user.followed_users
    @followed = @user.followers
  end

end
