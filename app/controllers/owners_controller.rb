class OwnersController < ApplicationController
   def new
      @owner = Owner.new
   end

   def create
      @owner = Owner.new(owner_params)
      if @owner.save
         session[:owner_id] = @owner.id
         redirect_to '/properties/new'
      else
         redirect_to '/owners/new'
      end
   end

   def inicio
      
   end

   private
   def owner_params
      params.require(:owner).permit(:first_name, :last_name, :email, :password)
   end
end
