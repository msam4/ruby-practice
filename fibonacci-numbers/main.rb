print "Enter a number: "
number = gets.chomp.to_i

fibanacciPrev = 0
fibanacci = 1

while fibanacci <= number
  puts fibanacci
  fibanacciPrev, fibanacci = fibanacci, fibanacci + fibanacciPrev
end
