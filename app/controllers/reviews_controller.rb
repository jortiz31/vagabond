class ReviewsController < ApplicationController

  before_action :logged_in?, only: [:show, :create]
  before_action  only: [:show, :destroy, :edit, :update]

# display list of cities that a specific user belongs to
  def index
    @user = User.find(params[:id])
<<<<<<< HEAD
    @cities = City.all
=======
>>>>>>> 8d7c0d6d440312fd93686b2fba0d2e53f3a0f71a
    render :index
  end

  #add reviews to user
  def new
    @city = City.find(params[:id])
    @user = User.find(params[:id])
<<<<<<< HEAD
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
    @city = City.find(params[:id])
    @user.reviews.push(@city)
    redirect_to reviews_path
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
