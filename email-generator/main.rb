puts "Company Email Generator"

print "First Name: "
firstname = gets.chomp
print "Last Name: "
lastname =  gets.chomp
print "Company Name: "
company = gets.chomp

email = ""
email << firstname.downcase
email << "."
email << lastname.downcase
email << "@"
email << company.downcase
email << ".com"

puts email
