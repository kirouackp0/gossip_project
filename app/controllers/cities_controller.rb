class CitiesController < ApplicationController
  def index
    @cities = City.all
    @users = User.all
  end

  def show
    @city = City.find(params[:id])
    @users = @city.users.includes(:gossips)
  end

  def new
    @city = City.new
  end

  def create
    @city = City.create(post_params)
    redirect_to cities_path(@city.id)
  end

  def edit
    @city = City.find(params[:id])
  end

  def update
    @city = City.find(params[:id])
    @city.update(post_params)
    redirect_to cities_path
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    redirect_to cities_path
  end

  private
  
  def post_params
    params.require(:city).permit(:name, :zip_code)
  end
end




