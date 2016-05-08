class CitiesController < ApplicationController

  def index
    @cities = City.all
    render :index
  end

  def show
    @city = City.find(params[:id])
    render :show
  end

  def new
    @city = City.new
    render :new
  end

  def create
    @city = City.create(city_params)
    redirect_to cities_path
  end


    # show the edit city form
    def edit
      city_id = params[:id]
      @city = City.find_by_id(city_id)
      render :edit
    end

    def update
      city_id = params[:id]
      city = City.find_by_id(city_id)
      city_params = get_city_params
      city.update_attributes(city_params)
      redirect_to new_city
    end


  private
    def city_params
      params.require(:city).permit(:city_name, :country)
    end


end
