
def sign_up
  visit new_user_registration_path

  fill_in :user_username, with: 'FooBar'
  fill_in :user_email, with: 'Foo@bar.baz'
  fill_in :user_password, with: 'a123456'
  fill_in :user_password_confirmation, with: 'a123456'

  click_button 'Sign up'
end