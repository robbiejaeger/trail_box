require 'rails_helper'

RSpec.feature "Existing user can login" do
  scenario "they login an see root path" do
    location = Location.create(name: "Mt. Evans")
    user = User.create(username: "Robbie", password: "password")

    visit login_path

    fill_in "Username", with: "Robbie"
    fill_in "Password", with: "password"
    click_button("Login")

    expect(page).to have_content "Logout"
    expect(page).to have_content "Hi, Robbie"

    expect(page).to have_content "Mt. Evans"
  end
end
