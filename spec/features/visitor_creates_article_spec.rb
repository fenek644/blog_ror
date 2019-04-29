require "rails_helper"

feature "Article Creation" do

  before(:all) do
    sign_up
  end

  scenario "allow user to visit new article page" do

    visit new_article_path
    
    expect(page).to have_content I18n.t('article.new')
  end

end