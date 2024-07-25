add = lambda do |num1, num2|
  num1 + num2
end

subtract = lambda do |num1, num2|
  num1 - num2
end

multiply = lambda do |num1, num2|
  num1 * num2
end

divide = lambda do |num1, num2|
  num1 / num2
end

def manager(function)
  print "Number 1: "
  num1 = gets.chomp.to_i
  print "Number 2: "
  num2 = gets.chomp.to_i
  result = function.call(num1, num2)
  puts "Results: #{result}".center(50, "-")
end

begin
  puts "Calculator"
  puts "A) Add"
  puts "B) Subtract"
  puts "C) Multiply"
  puts "D) Divide"
  puts "Q) Quit"

  print "Select (a/b/c/d/q)"
  choice = gets.chomp

  case choice
  when "a" then manager add
  when "b" then manager subtract
  when "c" then manager multiply
  when "d" then manager divide
  when "q" then puts "Goodbye!"
  else puts "Invalid input. Try again!"
  end
end while choice != "q"
