require "rails_helper"

feature "Contact Creation" do
  scenario "allow acces to contact page" do
    visit '/contacts'
    expect(page).to have_content I18n.t 'contacts.contact_us'
  end

  scenario "allows a guest to create contact" do
      visit '/contacts'

      fill_in :contact_email, with: 'user@example.com'
      fill_in :contact_message, with: 'this message'
      click_button 'Send message'

      expect(page).to have_content I18n.t('contacts.thanks')
    end

end