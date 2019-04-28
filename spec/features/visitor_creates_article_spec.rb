require 'rails_helper'

feature "Article creation" do
  before(:all) do
    sign_up
  end

  scenario "allow user to visit article page"do
    visit new_article_path
    expect(page).to have_content "New Article"
  end

end