# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

location1 = Location.create(name: "Mt. Evans")
location2 = Location.create(name: "Torreys Peak")

date = Date.today
location1.hikes.create(date_hiked: date, route: "Main Trail", highest_point: "14,000 ft", description: "We hiked this!")
