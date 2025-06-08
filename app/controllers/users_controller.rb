class UsersController < ApplicationController
  def new
  @user = User.new
  end

  def create
    @user = User.new
    @user["username"] = params["username"]
    @user["email"] = params["email"]
    @user["password_digest"] = params["password"]
    @user.save
    flash[:notice] = "Thanks for signing up. Now login."
    redirect_to "/login"
  end
end
