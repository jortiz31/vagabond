class CitiesController < ApplicationController

  def index
    @cities = City.all
    render :index
  end

  def new
    @city = City.new

    render :new
  end

  def create
    @city = City.create(city_params)

    redirect_to cities_path
  end







  private

  def city_params
    params.require(:city).permit(:city_name, :country)
  end

end
