class FlightsController < ApplicationController

	def index
		@flight = Flight.new
		@flights = Flight.all
		@from_airports = from_airports(@flights)
		@to_airports = to_airports(@flights)
		@dates = dates(@flights)
		@airports = Airport.all
	end

	def to_airports(flights)
		to_airports = []
		flights.each do |flight|
			to_airports << flight.to_airport.code
		end
		to_airports
	end

	def from_airports(flights)
		from_airports = []
		flights.each do |flight|
			from_airports << flight.from_airport.code
		end
		from_airports
	end

	def dates(flights)
		dates = []
		flights.each do |flight|
			dates << flight.date
		end
		dates
	end
end
