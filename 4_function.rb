def add_numbers(num_1, num_2)
	return num_1.to_i + num_2.to_i
end

puts  add_numbers(5, 10)

#Pass by value
x = 1

def change_x(x)
	x = 10
end

change_x(x)

puts "x = #{x}"