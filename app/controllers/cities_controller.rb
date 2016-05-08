class CitiesController < ApplicationController

  def index
    @cities = Cities.all
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
      # get the city id from the url params
      city_id = params[:id]
      # use `city` to find the city in the database
      # and save it to an instance variable
      @city = City.find_by_id(city_id)
      # render the edit view (it has access to instance variable)
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
