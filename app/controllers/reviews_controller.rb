class ReviewsController < ApplicationController
  before_action :logged_in?, only: [:show, :create]
  before_action :get_id, only: [:show, :destroy, :edit, :update]

  def index

    @reviews = Review.all
    @user = User.find_by_id(params[:user_id])
    @cities = @user.cities

    render :index

  end

  def create
    @user = current_user
    @review = review.create(post_params)
    @user.review << @review

    redirect_to reviews_path
  end

end
