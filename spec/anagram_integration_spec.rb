require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Anagram Logic', {:type => :feature}) do
  it("processes the user's two entries and reveals whether the words are anagrams") do
    visit('/')
    fill_in('anagram1', :with => "hi")
    fill_in('anagram2', :with => "bye")
    click_button('Send')
    expect(page).to have_content('This is an antigram')
  end
end
