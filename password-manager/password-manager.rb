EMAIL = "me@example.com"
PASSWORD = "example"

puts "Welcome to the Password Manager!"
puts "Please sign in your email."
print "Enter email: "

user_email = gets.chomp

if user_email == EMAIL
  print "Enter password: "
  user_password = gets.chomp
else
  puts "Invalid email."
  exit
end

unless user_password != PASSWORD
  puts "Hello, #{user_email}!"
  puts "What would you like to do?"
  puts "1. Add new credentials."
  puts "2. Retrieve an existing credentials."
  puts "3. Exit"
  user_selection = gets.chomp
else
  puts "Invalid password."
  exit
end

case user_selection
when "1"
  puts "Creating new credentials."
when "2"
  puts "Retrieving existing credentials."
else
  puts "Exiting manager. Goodbye!"
  exit
end
