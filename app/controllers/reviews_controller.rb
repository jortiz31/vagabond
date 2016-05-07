class ReviewsController < ApplicationController
  before_action :logged_in?, only: [:show, :create]
  before_action :get_id, only: [:show, :destroy, :edit, :update]

  def index
    @reviews = Review.all
  end

  def create
    @city = City.find(params[:city_id])
    @city.users.push(current_user)

    redirect_to current_user
  end

end
