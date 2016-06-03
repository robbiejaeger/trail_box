require 'rails_helper'

RSpec.feature "User can create a a new hike" do
  scenario "user sees the hike page after it is created" do
    location = Location.create(name: "Mt. Evans")

    visit location_hikes_path(location)

    click_on "Add Your #{location.name} Hike"

    fill_in "hike[date_hiked]", with: Date.today
    fill_in "hike[route]", with: "Normal Trail"
    fill_in "hike[distance]", with: "5 miles"
    fill_in "hike[elevation_gain]", with: "2,300 feet"
    fill_in "hike[highest_point]", with: "14,000 feet"
    fill_in "hike[description]", with: "This hike was great."
    click_on "Create Hike"

    expect(page).to have_content "Mt. Evans"
    expect(page).to have_content "This hike was great."
  end
end
