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

    if string1.scan(/[aeiouy]/).count >= 1
      "This string contains a word"
    else
       "You need to input real words"
    end
      if a.size == b.size && a.delete(b).empty?
         output = "This is an Anagram"

      elsif a == firstreverse
           output = "First input is a Palindrome"

      elsif b == secondreverse
          output = "Second input is a Palindrome"

      elsif string1.scan(/[aeiouy]/).count >= 1
            "This string contains a word"

      else
        "This is NOT an Anagram"
      end
  end
end
