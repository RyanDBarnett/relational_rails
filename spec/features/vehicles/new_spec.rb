require 'rails_helper'

describe "Vehicle record form" do
  it "has a form for creating a new vehicle" do
    visit "/vehicles/new"
    expect(page).to have_content("Create a New Vehicle")

    fill_in(:name, with: "Very large vehicle")
    check "locked"
    fill_in(:passenger_capacity, with: 600)
    click_button "Create"

    expect(current_path).to eq("/vehicles")
    expect(page).to have_content("Very large vehicle")
  end


end
