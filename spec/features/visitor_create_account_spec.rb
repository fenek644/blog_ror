require 'rails_helper'

feature "Account creation" do
  scenario "allow guests to create account"do
    visit new_user_registration_path

    fill_in :user_username, with: 'FooBar'
    fill_in :user_email, with: 'Foo@bar.baz'
    fill_in :user_password, with: 'a123456'
    fill_in :user_password_confirmation, with: 'a123456'

    click_button 'Sign up'

    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end
