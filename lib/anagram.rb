class String
  define_method(:anagram) do

    anagram = self.to_str.split(' ')

    string1 = [anagram] * " "

    string2 = string1.split(" ")
    string3 = string2[0]
    string4 = string2[1]

    a = string3.downcase
    b = string4.downcase

    firstreverse = a.reverse
    secondreverse = b.reverse

    if a.size == b.size && a.delete(b).empty?
      "This is an Anagram"
    elsif a == firstreverse
      "First input is a Palindrome"
    elsif b == secondreverse
      "Second input is a Palindrome"
    # elsif string1.scan(/[aeiouy]/).count >= 1
    #     "This string contains a word"
    elsif string1.scan(/[aeiouy]/).count < 1
        "You need to input real words"
    else  a.chars.sort != b.chars.sort
          "This is an antigram"


#     elsif a == firstreverse
#         "First input is a Palindrome"
#     elsif b == secondreverse
#         "Second input is a Palindrome"

#     #      else
#     #        "This is NOT an Anagram"
#   #   end
end
  end
end
