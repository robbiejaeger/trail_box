require 'rails_helper'

RSpec.feature "User sees hikes for specific location" do
  scenario "they see list of hikes" do
    date = Date.today
    location = Location.create(name: "Mt. Evans")
    hike1 = location.hikes.create(date_hiked: date, route: "Main Trail", highest_point: "14,000 ft", description: "We hiked this!")
    hike2 = location.hikes.create(date_hiked: date, route: "Side Trail", highest_point: "14,000 ft", description: "We hiked this again!")

    visit location_hikes_path(location)

    expect(page).to have_link("#{date.to_s} - Main Trail", :href => location_hike_path(location, hike1))
    expect(page).to have_link("#{date.to_s} - Side Trail", :href => location_hike_path(location, hike2))
  end
end
