require "rails_helper"

feature "Article Creation" do

  before(:each) do
    sign_up
  end

  scenario "allow user to visit new article page" do

    # sign_up

    visit new_article_path
    
    expect(page).to have_content I18n.t('article.new')

    fill_in :article_title, with: 'article title'

    fill_in :article_text, with: 'article text'

    click_button 'Save Article'

    expect(page).to have_content  "Add comment"

    fill_in :comment_body, with: 'comment body'

    click_button 'Create Comment'

    expect(page).to have_content  "comment body"
  end

  # scenario " user create new article" do
  #
  #   visit new_article_path
  #
  #   fill_in :article_title, with: 'article title'
  #   fill_in :article_text, with: 'article text'
  #
  #   click_button 'Save Article'
  #
  #   expect(page).to have_content  "Add comment"
  # end

end