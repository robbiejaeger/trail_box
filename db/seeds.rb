# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(username: "Robbie", password: "password")
admin = User.create(username: "admin", password: "password", role: 1)

location1 = Location.create(name: "Mt. Evans")
location2 = Location.create(name: "Torreys Peak")
location3 = Location.create(name: "Mt. Elbert")

category1 = Category.create(name: "Fourteener")
category2 = Category.create(name: "Winter")
category3 = Category.create(name: "Summer")

date = Date.today
hike1 = location1.hikes.create(date_hiked: date, route: "Elwood Trail", distance: "5 miles", elevation_gain: "2,301 ft", highest_point: "14,000 ft", description: "We hiked this!")
hike2 = location1.hikes.create(date_hiked: date, route: "Fox Gulley", distance: "5 miles", elevation_gain: "2,301 ft",  highest_point: "14,000 ft", description: "We this again; it was so amazing!")
hike3 = location1.hikes.create(date_hiked: date, route: "Main Trail", distance: "5 miles", elevation_gain: "2,301 ft",  highest_point: "14,000 ft", description: "This hike was no fun. I don't even like plants...")

hike4 = location2.hikes.create(date_hiked: date, route: "Main Trail", distance: "5 miles", elevation_gain: "2,301 ft",  highest_point: "14,050 ft", description: "I hiked this for the fifth time!")
hike5 = location2.hikes.create(date_hiked: date, route: "South Trail", distance: "5 miles", elevation_gain: "2,301 ft",  highest_point: "14,050 ft", description: "I got lost because I didn't bring a map!")

hike6 = location3.hikes.create(date_hiked: date, route: "North Trail", distance: "5 miles", elevation_gain: "2,301 ft",  highest_point: "14,300 ft", description: "I saw a marmot!")
hike7 = location3.hikes.create(date_hiked: date, route: "North Trail", distance: "5 miles", elevation_gain: "2,301 ft",  highest_point: "14,305 ft", description: "We got to the top!")
hike8 = location3.hikes.create(date_hiked: date, route: "North Trail", distance: "5 miles", elevation_gain: "2,301 ft",  highest_point: "14,600 ft", description: "I couldn't even find where to park...")

hike1.categories = [category1]
hike3.categories = [category1, category2]
hike5.categories = [category1]
hike7.categories = [category1, category3]
