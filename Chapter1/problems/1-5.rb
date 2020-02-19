#!/usr/bin/env ruby

# One Away: There are three types of edits that can be performed on strings:
#   insert a character,
#   remove a character, or
#   replace a character.
#   Given two strings, write a function to check if they are one edit (or 
#   zero edits) away.
# def one_away(str1, str2)
#   # first compare the lengths of the two strings, they must be within 1 already to work
#   #
#   return false if (str1.length - str1.length).abs > 1
#   return true if str1 == str2
#   # replace a character
#   # compare str2 modificatiosn to str1
#   edits = 0
#   str2.length.times do |counter|
#     return true if counter == str1.length || counter == str2.length
#     next if str2[counter] == str1[counter]
#     str2[counter] = str1[counter]
#     edits += 1
#     return false if edits > 1
#   end
# 
#   # insert a character
#   str2.length.times do |counter|
#     
#   end
# 
#   return false if edits > 1
#   true
# end

p one_away('pale', 'pake') == true
p one_away('pale', 'kake') == false
p one_away('pales', 'pale') == true
p one_away('pale', 'pales') == true
p one_away('spale', 'pale') == true
p one_away('pale', 'ple') == true
p one_away('pale', 'bale') == true
p one_away('pale', 'bake') == false
