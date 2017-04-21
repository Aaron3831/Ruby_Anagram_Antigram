require('rspec')
require('anagram')

describe('String#anagram') do
  it("will determine whether two words are anagrams") do
    expect(("CARS SCAR").anagram()).to(eq("This is an Anagram"))
  end
  it("will determine whether two words are NOT anagrams") do
    expect(("blues clues").anagram()).to(eq("This is NOT an Anagram"))
  end
  it("will determine whether first word is a palindrome") do
    expect(("redder yellow").anagram()).to(eq("First input is a Palindrome"))
  end
  it("will determine whether secondword is a palindrome") do
    expect(("yellow redder").anagram()).to(eq("Second input is a Palindrome"))
  end
end
