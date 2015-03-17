# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
airline_list = [
			["American Airlines"],
			["Quantas"],
			["LAN"]
				]
departure_list = [DateTime.new(2015,03,17), DateTime.new(2015,03,19), DateTime.new(2015,03,29)
]

arrival_list = [DateTime.new(2015,04,21), DateTime.new(2015,04,24), DateTime.new(2015,05,25)
]

passenger_list = ["Pedro Perez", "Luis Sanchez", "Carlos Chavez"]
passport_list = ["ABC123", "CBA123", "123ABC"]
i = 1
airline_list.each do |airline|
	a = Airline.create( name: airline[0])
	f = Flight.create(number: "#{a.id}#{i}".to_i, airline_id: a.id)
	p = Passenger.create(name: passenger_list[i-1], passport: passport_list [i-1])
	Departure.create(date: departure_list[0], flight_id: f.id, status: 0)
	Arrival.create(date: arrival_list[1], flight_id: f.id, status: 0)
	
	i=i+1
end