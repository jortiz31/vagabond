class ReviewsController < ApplicationController

  before_action :logged_in?, only: [:show, :create]
  before_action  only: [:show, :destroy, :edit, :update]

# display list of cities that a specific user belongs to
  def index
    @user = User.find(params[:id])
    @cities = City.all
    render :index
  end

  #add reviews to user
  def new
    @city = City.find(params[:id])
    @user = User.find(params[:id])
    @review = Review.new

    render :new
  end

  def create
    @review = Review.create(reviews_params)
    @city = City.find(params[:id])
    @city.reviews << @review

    redirect_to city_path(@city)
  end

  def show
    @user = User.find(params[:id])
    @city = City.find(params[:id])
    @review = Review.find(params[:id])
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
      params.require(:review).permit(:description, :rating)
    end

end
