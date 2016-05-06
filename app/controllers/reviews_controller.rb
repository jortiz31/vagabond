class ReviewsController < ApplicationController
  before_action :logged_in?, only: [:show, :create]
  before_action :get_id, only: [:show, :destroy, :edit, :update]
    def index
      @reviews = Review.all
      render :index
    end

    def new
      @review = Review.new
      render :new
    end

    def create
      @review = Review.create(review_params)
      login(@review)
      redirect_to root_path
      #double check this function
    end

    def show
      render :show
    end

    def edit
      render :edit
    end

    def update
      review_params = get_review_params
      review.update_attributes(review_params)
      redirect_to show_review
    end

    def destroy
      review.destroy
      redirect_to root_path
    end

    private

  def get_id
    review_id = params[:id]
    @review = Review.find_by_id(review_id)
  end

end
