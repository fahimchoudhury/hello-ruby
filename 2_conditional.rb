# if-elseif-else
puts "Enter your age: "
age = gets.to_f

if (age >= 0 && age <= 11)
	puts "You're in primary school"
	puts "You're a kid"
elsif (age > 11 && age <= 17)
	puts "You're in high school"
	puts "You're a teenager"
else
	puts "You're not a child or teenager anymore!"
	puts "Grow up!"
end

unless age > 3
	puts ""
	
end

# unless
x = 1
unless x > 5
	puts "x is less than 5"
else
	puts "x is greater than 5"
end

puts "x is greater than 0" if x > 0

#case
print "Enter greeting: " 
greeting = gets.chomp

case greeting
when "French", "french"
	puts "Bonjour"
	exit
when "Spanish", "spanish"
	puts "Hola"
	exit
else
	puts "Hello"
end