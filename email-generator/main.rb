puts "Company Email Generator"

print "First Name: "
firstname = gets.chomp
print "Last Name: "
lastname =  gets.chomp
print "Company Name: "
company = gets.chomp

email = ""
email << firstname.downcase.split.join(".")
email << "."
email << lastname.downcase.split.join(".")
email << "@"
email << company.downcase.split.join
email << ".com"

puts email
