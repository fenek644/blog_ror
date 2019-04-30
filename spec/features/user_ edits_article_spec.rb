require "rails_helper"

feature "Article Edition" do

  before(:each) do
    sign_up
  end

  scenario " user edit new article" do

    visit new_article_path

    fill_in :article_title, with: 'article title'
    fill_in :article_text, with: 'article text'

    click_button 'Save Article'

    expect(page).to have_content  "Add comment"

    visit '/articles/1/edit'

    fill_in :article_title, with: 'new title'
    fill_in :article_text, with: 'new text'

    click_button 'Update message'

    expect(page).to have_content  "new text"

  end

end