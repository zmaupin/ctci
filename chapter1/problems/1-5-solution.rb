#!/usr/bin/env ruby

require 'byebug'

# One Away: There are three types of edits that can be performed on strings:
#   insert a character,
#   remove a character, or
#   replace a character.
#   Given two strings, write a function to check if they are one edit (or
#   zero edits) away.
# For this problem it's helpful to consider what each operation actually means.
#   Replacement: Consider two strings, such as bale and pale, that are one replacement away.
#   Yes, that does mean that you could replace a character in bale to make pale.
#   More precisely it means that they are different in only one place.
#   Insertion: The strings apple and aple are one insertion away.
#   this means that if you compared the strings, they would be identical - except for a shift at some point in the strings.
#   Removal: The strings apple and aple are also one removal away, since removal is just the inverse of insertion.
# Write two functions:
#   one_replacement(str1, str2)
#   one_insert(str1, str2) (to test the inverse just pass the strings in inverse, one_insert(str2, str1)
#   depending on which string is longer.
def one_away(str1, str2)
  if str1.length == str2.length
    return one_replacement(str1, str2)
  elsif (str1.length + 1) == str2.length
    return one_insert(str1, str2)
  elsif (str1.length - 1) == str2.length
    return one_insert(str2, str1)
  else
    return false
  end
end

def one_insert(str1, str2)
  index1 = 0
  index2 = 0
  found_difference = false

  while ((index1 < str1.length) && (index2 < str2.length))
    if str1[index1] != str2[index2]
      return false if found_difference

      found_difference = true

      index2 += 1
    else
      index1 += 1
      index2 += 1
    end
  end

  true
end

def one_replacement(str1, str2)
  found_difference = false

  str1.length.times do |i|
    if (str1[i] != str2[i])
      return false if found_difference

      found_difference = true
    end
  end

  true
end

p one_away('pale', 'pake') == true
p one_away('pale', 'kake') == false
p one_away('pales', 'pale') == true
p one_away('pale', 'pales') == true
p one_away('spale', 'pale') == true
p one_away('pale', 'ple') == true
p one_away('pale', 'le') == false
p one_away('pale', 'rle') == false
p one_away('pale', 'bale') == true
p one_away('pale', 'bake') == false
