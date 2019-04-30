require "rails_helper"

feature "Comment Writing" do

  before(:each) do
    sign_up
  end

  scenario " user create comment" do

    visit new_article_path

    fill_in :article_title, with: 'article title'
    fill_in :article_text, with: 'article text'

    click_button 'Save Article'

    expect(page).to have_content  "Add comment"

    fill_in :comment_body, with: 'comment body'

    click_button 'Create Comment'

    expect(page).to have_content  "comment body"
  end

end