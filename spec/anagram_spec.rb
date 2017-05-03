require('rspec')
require('anagram')

describe('String#anagram') do
  it("will determine whether two words are anagrams") do
    expect(("redder").anagram("redder")).to(eq(["First input is a Palindrome", "Second input is a Palindrome", "This is an Anagram"]))
  end
  it("will determine whether two words are anagrams regardless of letter case") do
    expect(("REDDER").anagram("REDDER")).to(eq(["First input is a Palindrome", "Second input is a Palindrome", "This is an Anagram"]))
  end
  it("will determine whether first word is a palindrome") do
    expect(("tacocat").anagram("blahoo")).to(eq(["This is an antigram", "First input is a Palindrome", "First input is a Palindrome"]))
  end
  it("will determine whether second word is a palindrome") do
    expect(("blahoo").anagram("tacocat")).to(eq(["This is an antigram", "Second input is a Palindrome", "Second input is a Palindrome"]))
  end
  it("will determine whether there're NO matches") do
    expect(("hi").anagram("bye")).to(eq(["This is an antigram", "Not an anagram"]))
  end
end
