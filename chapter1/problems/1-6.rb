#!/usr/bin/env ruby

# String Compression: Implement a method to perform basic string compression using
# the counts of repeated characters. For example, the string
# 'aabccccaa' would become 'a2b1c5a3'. If the "compressed" string would not become
# smaller than the original string, your method should return the original string.

def string_compression(str)
  # Use an array to store arrays the chars that are multiples.
  # 'aabccccaa'
  # [['a, 'a'], ['b'], ['c', 'c', 'c'], ['a', 'a']]
  # then convert the array to another string using the first element + length of the array.
end
