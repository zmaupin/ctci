#!/usr/bin/env ruby

# Is Unique: Implement an algorithm to determine if a string has all unique characters.
# What if you cannot use additional data structures?

def unique?(str)
  # add each char to a hash as the key, value to + 1 if not 0, 1 otherwise
  # at the end of the method, check that no values are above 1, if they are
  # then the string does not have all unique chars
  hsh = {}
  str.each_char do |character|
    if hsh[character].nil?
      hsh[character] = 1
    else
      hsh[character] += 1
    end
  end

  hsh.each_value { |val| return false if val > 1 }

  true
end

p unique?('this') == true
p unique?('that') == false
