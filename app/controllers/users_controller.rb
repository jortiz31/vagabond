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
<<<<<<< HEAD
    login (@user)
    redirect_to @user
  end

=======
    login(@user)
    redirect_to @user
  end

  def show
    @user = User.find_by_id(params[:id])
    render :show
  end

>>>>>>> ee256b8aa044b257760eaa775c09b0f7437b62a0
  def edit
    user_id = params[:id]
    @user = User.find_by_id(user_id)

    render :edit
  end

  def update
    user_id = params[:id]
    user = User.find_by_id(user_id)
    user.update_attributes(user_params)
<<<<<<< HEAD
    redirect_to user_path(user)
  end
=======
>>>>>>> ee256b8aa044b257760eaa775c09b0f7437b62a0

    redirect_to user_path(user)
  end

<<<<<<< HEAD
=======

>>>>>>> ee256b8aa044b257760eaa775c09b0f7437b62a0
  private

  def user_params
    params.require(:user).permit(:username, :current_city, :email, :password) if params[:user]
  end

end
