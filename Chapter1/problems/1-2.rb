#!/usr/bin/env ruby

# Check Permutation: Given two strings, write a method to decide if one is a permutation of the other.

def permutation?(str1, str2)
  # iterate over each string, add the char to a hash (individual to each string) with the value 1
  # no need to worry about duplicate chars
  # now compare the hashes, if they keys are the same, then return true otherwise return false
  hsh1 = {}
  hsh2 = {}
  str1.each_char { |character| hsh1[character] = 1 }
  str2.each_char { |character| hsh2[character] = 1 }
  hsh1 = hsh1.sort
  hsh2 = hsh2.sort
  hsh1.each_key do |hsh1_key|
    return false if hsh2.include(hsh1_key)
    return false if hsh1.length != hsh2.length
  end

  true
end

p permutation?('this', 'shit') == true
p permutation?('boob', 'doob') == false
