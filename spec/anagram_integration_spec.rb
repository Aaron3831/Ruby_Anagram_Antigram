require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Anagram Logic', {:type => :feature}) do
  it("processes the user's two entries and reveals whether the words are anagrams") do
    visit('/')
    fill_in('anagram', :with => "hi bye")
    click_button('Send')
    expect(page).to have_content('This is an antigram')
  end
end
