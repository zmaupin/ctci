#!/usr/bin/env ruby

# String Compression: Implement a method to perform basic string compression using
# the counts of repeated characters. For example, the string
# 'aabccccaa' would become 'a2b1c5a3'. If the "compressed" string would not become
# smaller than the original string, your method should return the original string.
# iterate over the string
# add the first character to a sub array
# move to the next character
# compare the current character to the previous character, if they're the same, append it to the sub_array
# if they're different then append the sub_array to the parent array then reset the sub array
# since you have the char in the loop, add it to the sub array
# then move to the next iteration
require 'byebug'

def string_compression(str)
  # Use an array to store arrays the chars that are multiples.
  # 'aabccccaa'
  # [['a, 'a'], ['b'], ['c', 'c', 'c'], ['a', 'a']]
  # then convert the array to another string using the first element + length of the array.
  arr = []
  sub_arr = []
  counter = 0

  str.each_char do |character|
    if counter == 0
      sub_arr << character
    elsif character == str[counter - 1]
      sub_arr << character
    elsif counter == str.length
      arr << sub_arr
    else
      arr << sub_arr
      sub_arr = [character]
    end

    counter += 1
  end
  arr << sub_arr

  compressed_string = ''
  arr.each do |sub_arr|
    if sub_arr.length > 1
      compressed_string += "#{sub_arr[0]}#{sub_arr.length}"
    else
      compressed_string += sub_arr[0]
    end
  end

  compressed_string
end

# 'aabccccaa'
# start with the first character and an empty array
# add the first character to the empty array
# next item is a
# if a is the same as the last item, append to the sub array
#   if it is not, add the sub_array to the array and reset the sub array, redo the loop
p string_compression('aabccccaa')
p string_compression('aabcccccaaa')
