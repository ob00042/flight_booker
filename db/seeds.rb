# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

airports = Airport.create([{ code: 'SFO'}, { code: 'NYC'}, { code: 'JFK'}, { code: 'ATH'}])

flights = Flight.create([{from_airport_id: 1, to_airport_id: 2, date: "20-04-2010", duration: 4}, 
					{from_airport_id: 3, to_airport_id: 2, date: "20-05-2015", duration: 6},
					{from_airport_id: 2, to_airport_id: 4, date: "13-10-2016", duration: 12},
					{from_airport_id: 4, to_airport_id: 1, date: "04-05-2013", duration: 15},
					{from_airport_id: 3, to_airport_id: 1, date: "02-10-2014", duration: 4}])
