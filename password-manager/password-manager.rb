EMAIL = "me@example.com"
PASSWORD = "example"
PASSWORD_VAULT = { aws: {username: "sam", password: "password"} }

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
  print "Enter new service credentials: "
  new_service = gets.chomp
  PASSWORD_VAULT[new_service] = {}

  print "Please enter the username for this service: "
  new_service_username = gets.chomp
  PASSWORD_VAULT[new_service]["username"] = new_service_username

  print "Please enter the password for this service: "
  new_service_password = gets.chomp
  PASSWORD_VAULT[new_service]["password"] = new_service_password

  puts PASSWORD_VAULT
when "2"
  print "Please enter the name of the service you wish to access credentials for: "
  requested_service_name = gets.chomp
  credentials = PASSWORD_VAULT[requested_service_name.to_sym]
  puts "Here are the credentials for #{requested_service_name}:"
  credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
else
  puts "Exiting manager. Goodbye!"
  exit
end
