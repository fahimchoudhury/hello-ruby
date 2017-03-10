class Animal
	def initialize
		puts "Creating a new animal"
	end

	def set_name(new_name)
		@name = new_name
	end

	def get_name
		@name
	end

	def name
		@name
	end

	def name=(new_name)
		@name = new_name unless new_name.is_a?(Numeric)
	end

cat = Animal.new

cat.set_name("Newton")

puts cat.get_name
puts cat.name

cat.name = "Einstein"
puts cat.name

end


class Dog
	#getter
	#attr_reader :name, :height, :weight
	#setter
	#attr_writer :name, :height, :weight

	#accessor
	attr_accessor :name, :height, :weight

	def bark
		return "Generic bark"
	end

end

rover = Dog.new
rover.name = "Rover"
puts rover.name

#Inheritance
class GermanShepard < Dog
	def bark
		return "Loud bark"
	end
end

max = GermanShepard.new
max.name = "Maximilian Kohler"
max.bark()

printf "%s goes %s\n", max.name, max.bark()

