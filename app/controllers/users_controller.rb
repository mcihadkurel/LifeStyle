class UsersController < ApplicationController
  
  def show
    @user = User.new
  end

  def register
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
  
    if @user.save
      redirect_to login_path, notice: 'Welcome! Now you can login by typing your name'
    else
      render :register
    end
  end

  private

def user_params
  params.require(:user).permit( :name, :email, :avatar)
end

end
