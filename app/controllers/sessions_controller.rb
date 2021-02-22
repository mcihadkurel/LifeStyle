class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by_name(params[:name])
    if session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Wrong username"
      render "register"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
