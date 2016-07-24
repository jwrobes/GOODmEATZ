require "rails_helper"

feature "user finds list of restaurants" do
  scenario "successfully" do
    create(:restaurant)

    visit root_path

    expect(page).to have_css "p", text: "Park burger"
  end
end
