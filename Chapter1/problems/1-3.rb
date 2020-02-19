#!/usr/bin/env ruby

# URLify: Write a method to replace all spaces in a string with %20.
# You may assume that the string has sufficient space at the end to hold
# the additional characters, and that you are given the "true" length 
# of the string. 

def urlify(str)
  str.strip.gsub(/ /, '%20')
end

p urlify('Mr John Smith    ')
