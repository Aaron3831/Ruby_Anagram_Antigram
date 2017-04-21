class String
  define_method(:anagram) do

    anagram = self.to_str.split(' ')

    string1 = [anagram] * " "

    string2 = string1.split(" ")
    string3 = string2[0]
    string4 = string2[1]

    firstreverse = string3.reverse
    secondreverse = string4.reverse

    a = string3.downcase
    b = string4.downcase


    if a.size == b.size && a.delete(b).empty?
      output = "This is an Anagram"

    elsif string3 == firstreverse
      output = "First input is a Palindrome"

    elsif string4 == secondreverse
      output = "Second input is a Palindrome"

    else
      "This is NOT an Anagram"
    #anagram stuff#




    #compares length of input a to b after deleting all items from b that are contained in a. empty? confirms if the array is empty afterwards#
  end
  end
end
