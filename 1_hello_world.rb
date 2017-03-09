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

load "another_file.rb"





