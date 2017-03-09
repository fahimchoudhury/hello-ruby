# Variable Assignment and I/O

print "Enter a value: "

first_number = gets.to_i

print "Enter second value: "

second_number = gets.to_i

# puts prints a new line after the line ending
puts first_number.to_s + " + " + second_number.to_s + " = " + (first_number + second_number).to_s		

puts "Remainder of " + first_number.to_s + " % " + second_number.to_s + " = " + (first_number % second_number).to_s

#Floating piont arithmetic

decimal_number_1 = 0.9999

decimal_number_2 = 1.666

puts decimal_number_1.to_s + "/" + decimal_number_2.to_s + " = " + (decimal_number_1 / decimal_number_2).to_s

float_1 = 1.888888888888888888888888888888888888888877777777777777777777777777777777777777

float_2 = 0.222222222222222222222222222222222222222222222222999999999999999999999999999999999

puts float_1 + float_2


# Class type
puts 1.class

puts 1.2.class

puts "hello".class

# Constant (Always starts with caps, gives warning when value changes)
A_CONSTANT = 5
A_CONSTANT = 3

ANOTHER_CONSTANT = 6 + A_CONSTANT

puts "Constant value: " + ANOTHER_CONSTANT.to_s

# File IO
write_handler = File.new("newFile", "w");

write_handler.puts 5

write_handler.close

data_from_file = File.read("newFile")

puts data_from_file

=begin
Load from andother file
=end

load "2.rb"

# Conditional
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

