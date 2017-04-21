class String
  define_method(:anagram) do

    anagram = "cars scar".split(' ')

    string1 = [anagram] * " "

    string2 = string1.split(" ")
    string3 = string2[0]
    string4 = string2[1]

    a = string3
    b = string4


    a.size == b.size && a.delete(b).empty?
    #compares length of input a to b after deleting all items from b that are contained in a. empty? confirms if the array is empty afterwards#
  end
end
#use casecmp method for case insensitive comparison#
