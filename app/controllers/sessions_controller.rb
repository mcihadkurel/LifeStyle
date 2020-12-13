class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:email])
    if user && user.authenticate(params[:name])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
      flash.now.alert = "Wrong username"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
