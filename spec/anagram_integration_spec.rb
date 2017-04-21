require('rspec')
require('anagram')

describe('String#anagram') do
  it("will determine whether two words are anagrams") do
    expect(("cars scar").anagram()).to(eq(true))
  end

end
