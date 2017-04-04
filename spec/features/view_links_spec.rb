# As a time-pressed user
# So that I can quickly go to web sites I regularly visit
# I would like to see a list of links on the homepage

feature 'viewing links' do
  scenario 'Should be able to see list of links' do
    Link.create(url: 'http://www.google.co.uk', title: 'Google')
    visit '/links'

    # This is temporary - tests whether the page is loading
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Google')
    end

  end
end
