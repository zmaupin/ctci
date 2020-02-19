#!/usr/bin/env ruby

# Palindrome Permutation: Given a string, write a function to check if it
# is a permutation of a palindrome.

def palindrome_permutation?(str)
  arr = str.split('')
  palindrome = false
  palindromes_arr = []
  1000.times do
    shuffled_str = arr.shuffle.join
    if palindrome?(shuffled_str)
      palindrome = true
      palindromes_arr << shuffled_str
    end
  end
  if palindrome
    palindromes_arr.uniq!
    return [true, palindromes_arr]
  end
  return [false, []]
end

def palindrome?(str)
  str.downcase.delete(' ') == str.downcase.delete(' ').reverse
end

answer_arr = palindrome_permutation?('Tact Coa')

if answer_arr[0]
  puts "True (permutations: #{answer_arr[1].inspect}"
else
  puts "False"
end
