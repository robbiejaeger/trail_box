require 'rails_helper'

RSpec.feature "User can see all locations" do
  scenario "they see a list of all locations" do
    location1 = Location.create(name: "Mt. Evans")
    location2 = Location.create(name: "Torreys Peak")

    visit locations_path

    expect(page).to have_content "Mt. Evans"
    expect(page).to have_content "Torreys Peak"
  end

  scenario "each location has a link to hikes page" do
    location1 = Location.create(name: "Mt. Evans")

    visit locations_path

    expect(page).to have_link("Mt. Evans", :href => location_hikes_path(location1))
  end
end
