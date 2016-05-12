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
<<<<<<< HEAD
      flash[:notice] = "LogIn Successful!"
      redirect_to @user
    else
      flash[:error] = "Incorrect Email or Password."
      redirect_to login_path
=======
      flash[:notice] = "Successfully logged in."
      redirect_to @user
    else
      flash[:error] = "Incorrect email or password."
      redirect_to session_path
>>>>>>> ee256b8aa044b257760eaa775c09b0f7437b62a0
    end
  end

  def destroy
    session[:user_id] = nil
<<<<<<< HEAD
    flash[:notice] = "LogOut Successful"
=======
    flash[:notice] = "Successfully logged out."
>>>>>>> ee256b8aa044b257760eaa775c09b0f7437b62a0
    redirect_to root_path
  end

end
