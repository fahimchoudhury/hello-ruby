#Loop
#do
x = 0
puts 'do loop'
loop do
	x += 1 
	next unless (x % 2) == 0
	puts x

	break if x > 10 
end


#while
puts 'while loop'
y = 1
while y <= 10
	y += 1
	next unless (y % 2) == 0
	puts y
end


#until
puts "until loop"
y = 1
until y >= 10
	y += 1
	next unless (y % 2) == 0
	puts y 
end

#forin
puts "forin loop"
numbers = [1, 2, 3, 4, 5 , 6, 7]
for number in numbers
	next unless (number % 2 == 0)
	print "#{number}, "
end

#each
groceries = ["Bread", "Apple", "Milk", "Tea", "Sugar"]
groceries.each do |food|
	puts "Get me some #{food}"
end

(0..5).each do |i|
	puts "##{i}"
end