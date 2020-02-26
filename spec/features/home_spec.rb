require "rails_helper"

feature "Home page" do
  scenario "Loads sucessfully" do
    visit "/"
    expect(page).to have_text "Squash Specs"
  end
end

