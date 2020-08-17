require "spec_helper"
require "rails_helper"

feature "Contact creation" do
  scenario "allows acees to contact page" do
    visit '/contacts' 

    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end