require "rails_helper"

feature "user creates todo" do
  scenario "successfully" do
    visit root_path

    click_on "Add a new todo"
    fill_in "Title", with: "Preorder Nintendo Switch"
    click_on "Submit"

    expect(page).to have_css ".todos li", text: "Preorder Nintendo Switch"
  end
end
