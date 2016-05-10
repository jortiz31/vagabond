class UsersController < ApplicationController
  before_action :logged_in?, only: [:show]


  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(user_params)

    login (@user)
    redirect_to @user
  end


  def show
    @user = User.find_by_id(params[:id])
    render :show
  end


  def edit
    user_id = params[:id]
    @user = User.find_by_id(user_id)

    render :edit
  end

  def update
    user_id = params[:id]
    user = User.find_by_id(user_id)
    user.update_attributes(user_params)

    flash[:success] = "User Updated"
    redirect_to user_path(user)
  end

  def destroy
    user_id = params[:id]
    @user = User.find_by_id(user_id)
    @user=current_user
    User.destroy(@user)
    flash[:success] = "User deleted"
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :current_city, :email, :password) if params[:user]
  end

end
