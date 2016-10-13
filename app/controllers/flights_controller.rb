class FlightsController < ApplicationController

	def index
		@results = []
		@airport_codes = Airport.all.collect{ |a| [a.code, a.id] }
		@dates = Flight.flight_dates
		@results << Flight.where(from_airport_id: params[:from].to_i, to_airport_id: params[:to].to_i)
	end

	
	
end
