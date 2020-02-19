#!/usr/bin/env ruby

# String Rotation: Assume you have a method `isSubstring` which checks if one word
# is a substring of another. Given two strings, `s1` and `s2`, write code to check
# if `s2` is a rotation of `s1` using only one call to isSubstring.
#
# Examples: 'waterbottle' is a rotation of 'erbottlewat'
def string_rotation(str1, str2)
#  str1_hsh = {}
#  str2_hsh = {}
#
#  str1.each_char do |character|
#    if str1_hsh[character].nil?
#      str1_hsh[character] = 1
#    else
#      str1_hsh[character] += 1
#    end
#  end
#
#  str2.each_char do |character|
#    if str2_hsh[character].nil?
#      str2_hsh[character] = 1
#    else
#      str2_hsh[character] += 1
#    end
#  end
#
  substring?(str1, str2)
end

# create a hash table for each str
# then compare them, if str1 contains all the characters from str2 return true
def substring?(str1, str2)
  str2.each_char do |character|
    if str1.include?(character)
      next
    else
      return false
    end
  end

  true
end

p string_rotation('waterbottle', 'erbottlewat')
