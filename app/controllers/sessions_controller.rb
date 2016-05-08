class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    user_params = params.require(:user).permit(:email, :password)
    @user = User.confirm(user_params)
    if @user
      login(@user)
      flash[:notice] = "LogIn Successful!"
      redirect_to @user
    else
      flash[:error] = "Incorrect Email or Password."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "LogOut Successful"
    redirect_to root_path
  end

end
