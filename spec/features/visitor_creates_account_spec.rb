require "rails_helper"
require 'database_cleaner'

feature "Account Creation" do
  before(:all) do
    sign_up
  end
  scenario "allow guest to create account" do
    # sign_up

    expect(page).to have_content I18n.t('devise.registrations.signed_up')

  end

end

