class String
  define_method(:anagram) do |input2|

    answer_array = []

    a = self.downcase
    b = input2.downcase

    firstreverse = a.reverse
    secondreverse = b.reverse

    if a.scan(/[aeiouy]/).count < 1
      answer_array.push("At least one of these words aren't real")
    end
    if  a.chars.sort != b.chars.sort
      answer_array.push("This is an antigram")
    end
    if a == firstreverse
      answer_array.push("First input is a Palindrome")
    end
    if b == secondreverse
      answer_array.push("Second input is a Palindrome")
    end
    if a.size == b.size && a.delete(b).empty?
      answer_array.push("This is an Anagram")
    elsif a == firstreverse
      answer_array.push("First input is a Palindrome")
    elsif b == secondreverse
      answer_array.push("Second input is a Palindrome")
    else
      answer_array.push("Not an anagram")
    end
  end
end
