require 'database_cleaner'

feature 'creating links' do

  scenario "add the site's address and title to my bookmark manager" do
    visit '/links/new'
    fill_in :url, with: 'http://www.google.co.uk'
    fill_in :title, with: 'google'
    click_button('Save')
    expect(page).to have_content('google')
  end

end
