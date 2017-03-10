array_1 = Array.new
array_2 = Array.new(5)
array_3 = Array.new(5, 0)
array_4 = [1, 2, -3.3, "four"]

puts array_1
puts array_2
puts array_3
puts array_4

#Return 2 values starting at the 2nd index
puts array_4[2, 2].join(", ")	#[index, number_of_values]

#Values at specific position and join
puts "Values at index 0 and 2 are: " + array_4.values_at(0, 2).join(", ")

#Add value at the beginning of the array
array_4.unshift("value")
puts array_4.join(", ")

#Remove the first item from the beginning of the array
array_4.shift()
puts array_4.join(", ")

#Add items to the end of the array
array_4.push(100, 200, "Three hundred")
puts array_4.join(", ")

#Add one array to the end of another
array_4.concat(array_3)
puts array_4.join(", ")

#Array methods
puts "Array size: " + array_4.size().to_s
puts "Array contains 100? " + array_4.include?(102).to_s
puts "How many 0's are there? " + array_4.count(0).to_s

#Print and inspect an array
p array_4

#Output array in loop
begin
	array_4.each do |value|
		puts value unless value < 0
	end
rescue ArgumentError
	puts "Incompatible type, expecting number, not string"
end
