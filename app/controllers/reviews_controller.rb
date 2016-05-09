class ReviewsController < ApplicationController

  before_action :logged_in?, only: [:show, :create]
  before_action :get_id, only: [:show, :destroy, :edit, :update]

# display list of cities that a specific user belongs to
  def index
    @user = User.find(params[:id])
    @cities = @user.cities
    render :index
  end

#add reviews to user
  def create
    @user = User.find(params[:id])
    @user.reviews.push(current_user)
    redirect_to reviews_path
  end

  def show
    @user = User.find(params[:id])
    @review = Review.find_by_id(params[:id])
    @cities = @user.cities
    render :show
  end

  def edit
    @user = User.find(params[:id])
    render :edit

  end

  def update
    @user = User.find(params[:id])
    reviews.update_attributes(reviews_params)
    @user.reviews.update(current_user)
  end

  def destroy
    @user = User.find(params[:id])
    reviews.destroy(reviews_params)
    redirect_to reviews_path
  end

  private
    def reviews_params
      params.require(:reviews).permit(:city_name, :description, :rating)
    end

    def get_id
      @user = User.find(params[:id])
    end
end
