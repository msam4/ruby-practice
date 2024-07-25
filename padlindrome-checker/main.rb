def is_palidrome(word)
  if word.length <= 1
    return true
  elsif word[0] != word[-1]
    return false
  else
    is_palidrome(word[1, word.length-2])
  end
end

puts "Padindrome Word Checker"
print "Word: "
word = gets.chomp
puts "Is Padindrome: #{is_palidrome(word)}"
