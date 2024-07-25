def is_palidrome(word)
  return true if word.length <= 1
  return false if word[0] != word[-1]
  is_palidrome(word[1, word.length-2])
end

puts "Padindrome Word Checker"
print "Word: "
word = gets.chomp
puts "Is Padindrome: #{is_palidrome(word)}"
