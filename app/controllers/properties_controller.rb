class PropertiesController < ApplicationController

   #before_action :owner_user, only: [:index, :show]

  def index
  end

  def show
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def property_params
    params.require(:property).permit(:name,:description,:address,:price,:ownerName,:ownerPhone,:ownerEmail)
  end

end
