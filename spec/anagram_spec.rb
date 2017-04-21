require('rspec')
require('anagram')

describe('String#anagram') do
  it("will determine whether two words are anagrams") do
    expect(("redder redder").anagram()).to(eq("This is an Anagram"))
  end
  it("will determine whether two words are anagrams regardless of letter case") do
    expect(("REDDER REDDER").anagram()).to(eq("This is an Anagram"))
  end
  it("will determine whether first word is a palindrome") do
    expect(("tacocat blahooo").anagram()).to(eq("First input is a Palindrome"))
  end
  it("will determine whether second word is a palindrome") do
    expect(("blahoo tacocat").anagram()).to(eq("Second input is a Palindrome"))
  end
  it("will determine whether there're NO matches") do
    expect(("hi bye").anagram()).to(eq("This is an antigram"))
  end
end
