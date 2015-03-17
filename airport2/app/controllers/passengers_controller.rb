class PassengersController < ApplicationController
	def index
		@passengers = Flight.find(params[:flight_id]).passengers
		@flightp = Flight.find(params[:flight_id]).number
	end

end
