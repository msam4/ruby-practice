print "Enter Grade Point: "
grade = gets.chomp.to_i

results =
case grade
  when 90...100 then "Letter Grade A"
  when 80...89 then "Letter Grade B"
  when 70...79 then "Letter Grade C"
  when 60...69 then "Letter Grade D"
  when 0...59 then "Letter Grade F"
  else "Invalid input"
end

puts results
