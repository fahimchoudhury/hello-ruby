puts "-- Exception handling -- "

puts "Enter a number: "
first_number = gets.to_i

puts "Enter another number: "
second_number = gets.to_i

begin
	answer = first_number / second_number

rescue
	puts "You can't divide by zero"
	exit
end

puts "#{first_number} / #{second_number} = #{answer}" 

#Custom exception handling
puts "-- Custom exception handling --"

puts "Enter an age"
age = gets.to_i
def check_age(age)
	raise ArgumentError, "Enter positive number" unless age > 0
	return age
end

begin
	puts "Your age is #{check_age(age)}"
rescue ArgumentError
	puts "Thats an impossible age"
end


