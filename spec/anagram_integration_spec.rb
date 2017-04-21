require('rspec')
require('anagram')

describe('String#anagram') do
  it("will determine whether two words are anagrams") do
    expect(("redder redder").anagram()).to(eq("This is an Anagram"))
  end
  it("will determine whether two words are NOT anagrams") do
    expect(("blh blhh").anagram()).to(eq("This is NOT an Anagram"))
  end
  it("will determine whether first word is a palindrome") do
    expect(("redder yellow").anagram()).to(eq("First input is a Palindrome"))
  end
  it("will determine whether second word is a palindrome") do
    expect(("yellow redder").anagram()).to(eq("Second input is a Palindrome"))
  end
  it("will determine whether there's a real word") do
    expect(("tree rees").anagram()).to(eq("This string contains a word"))
  end
end
