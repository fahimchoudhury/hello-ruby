class Menu
	include Enumerable

	#Each provides item one at a time
	def each
		yield "piaza"
		yield "spaghetti"
		yield "salad"
		yield "water"
	end
end

menu_options = Menu.new

#Cycle through each item
menu_options.each do |item|
	puts "Would you like some #{item}?"
end

#Find operation
puts menu_options.find {|item| item == "pizza"}
puts menu_options.find {|item| item == "bread"}

#Select
puts "Item size == 9? " + menu_options.select {|item| item.size == 9}.to_s

#Reject
puts "Reject spaghetti: " + menu_options.reject {|item| item.size == 9}.to_s

#First
puts "First item: " + menu_options.first.to_s

#Take
puts "Take(2): " + menu_options.take(2).to_s

#Drop
puts "Drop the first 2: " + menu_options.drop(2).to_s

#Minimum, Maximum
puts "Minimum: " + menu_options.min 	#Lexicographical sorting for strings, a < b 
puts "Maximum: " + menu_options.max

#Sort
puts menu_options.sort

#Reverse
puts menu_options.reverse_each {|item| puts item}