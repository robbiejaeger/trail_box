require 'rails_helper'

RSpec.feature "User sees hike" do
  scenario "they see the details of the posted hike" do
    date = Date.today
    location = Location.create(name: "Mt. Evans")
    hike = location.hikes.create(date_hiked: date, route: "Main Trail", highest_point: "14,000 ft", description: "We hiked this!")

    visit location_hike_path(location, hike)

    expect(page).to have_content "Mt. Evans"
    expect(page).to have_content Date.today.to_s
    expect(page).to have_content "We hiked this!"
  end
end
