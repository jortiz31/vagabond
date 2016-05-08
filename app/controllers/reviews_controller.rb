class ReviewsController < ApplicationController

  before_action :logged_in?, only: [:show, :create]
  before_action  only: [:show, :destroy, :edit, :update]

# display list of cities that a specific user belongs to
  def index
    @user = User.find(params[:user_id])
    @cities = @user.cities
    render :index
  end

#add reviews to user
  def create
    @user = User.find(params[:user_id])
    @user.reviews.push(current_user)
    redirect_to reviews_path
  end

  def show
    @user = User.find(params[:user_id])
    @review = @user.reviews
    render :show
  end

  def edit
    @user = User.find(params[:user_id])
    render :edit

  end

  def update
    @user = User.find(params[:user_id])
    reviews.update_attributes(reviews_params)
    @user.reviews.update(current_user)
  end

  def destroy
    @user = User.find(params[:user_id])
    reviews.destroy(reviews_params)
    redirect_to reviews_path
  end

  private
    def reviews_params
      params.require(:reviews).permit(:city_name, :description, :rating)
    end


end
