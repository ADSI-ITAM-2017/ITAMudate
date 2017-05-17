class HousesController < ApplicationController
   before_action :require_user, only: [:new, :create]

   def new
      @house = House.new
   end

   def create
      @house = House.new(house_params)
      if @house.save
         redirect_to '/catalogo'
      else
         redirect_to '/'
      end
   end

   def index
     @houses = House.all
   end

   def show
   end

   private
   def house_params
      params.require(:house).permit(:title, :description, :address, :price, :bathrooom, :email, :image)
   end
end
