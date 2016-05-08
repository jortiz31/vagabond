class UsersController < ApplicationController

  before_action :logged_in?, only: [:show]


  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome!"
      redirect_to @user
    else
        render 'new'
    end
    log_in(@user)
    redirect_to @user
  end


  def edit
    user_id = params[:id]
    @user = User.find_by_id(user_id)
    render :edit
  end

  def update
    user_id = params[:id]
    user = User.find_by_id(user_id)
    user.update(user_params)
    redirect_to user_path(user)
  end

  def destroy
    user_id = params[:id]
    user = User.find_by_id(user_id)
    user.destroy(user_params)
    flash[:success] = "User deleted"
    redirect_to users_path(users)
  end



  private
  def user_params
    params.require(:user).permit(:username, :current_city, :email, :password)
  end

end
