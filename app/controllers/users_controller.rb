class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def register
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
  
    if @user.save
      redirect_to root_path, notice: 'Welcome! We have sent you the link to login to our app'
    else
      render :register
    end
  end
  
end
