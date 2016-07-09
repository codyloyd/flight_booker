# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Airport.delete_all
Flight.delete_all

airports = Airport.create([{code: 'SFO'},
             {code: 'NYC'},
             {code: 'LAS'},
             {code: 'SUN'},
             {code: 'SPF'},
             {code: 'JFK'},
             {code: 'GRB'}])

airports.each do |from|
  airports.each do |to|
    Flight.create(from:from, to:to) unless from == to
  end
end
