require "rails_helper"

feature "Article Writing" do

  before(:each) do
    sign_up
  end

    scenario " user writes new article" do

      visit new_article_path

      fill_in :article_title, with: 'article title'
      fill_in :article_text, with: 'article text'

      click_button 'Save Article'

      expect(page).to have_content  "Add comment"
    end

  end