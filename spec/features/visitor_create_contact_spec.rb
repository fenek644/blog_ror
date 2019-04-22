require "rails_helper"

feature "Contact Creation" do
  scenario "allow acces to contactы page" do
    visit '/contacts'
    expect(page).to have_content 'New Contact'
  end
end