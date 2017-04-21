require('rspec')
require('anagram')

describe('String#anagram') do
  it("will determine whether two words are anagrams") do
    expect(("CARS SCAR").anagram()).to(eq("This is an Anagram"))
  end
  it("will determine whether two words are anagrams") do
    expect(("blues clues").anagram()).to(eq("This is NOT an Anagram"))
  end
end
