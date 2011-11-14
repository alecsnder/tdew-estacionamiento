class NavigationController < ApplicationController
  def home
	@estacionamientos = Estacionamiento.all

    	respond_to do |format|
      	format.html # index.html.erb
      	format.json { render json: @estacionamientos }
    	end
  	end


end
