class UsersController < ApplicationController

  def index
<<<<<<< HEAD
    @users = User.all
    render :index
=======
     @users = User.all
     render :index
  end

  def new
    @user = User.new
    render :new
>>>>>>> e267445eb999e9a2f2572e1e317e72482aa162bd
  end
  
end
