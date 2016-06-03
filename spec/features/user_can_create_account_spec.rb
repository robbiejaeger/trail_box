require 'rails_helper'

RSpec.feature "User can create account" do
  scenario "they create account and are logged in" do
    visit new_user_path

    expect(page).to have_content "Login"
    expect(page).to_not have_content "Hi, Robbie"

    fill_in "Username", with: "Robbie"
    fill_in "Password", with: "password"
    click_on "Create Account"

    expect(page).to_not have_content "Login"
    expect(page).to have_content "Logout"
    expect(page).to have_content "Hi, Robbie"
    expect(page).to have_content "Hi, Robbie. Your account was created!"
  end
end
