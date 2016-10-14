class Flight < ApplicationRecord
	belongs_to :from_airport, class_name: "Airport"

	belongs_to :to_airport, class_name: "Airport"
	has_many :bookings
	def self.flight_dates
		all.collect{ |f| f.date.strftime("%m/%d/%Y at %H:%M") }
	end

	

end
