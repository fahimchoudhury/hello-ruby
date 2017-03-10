require_relative "human"
require_relative "smart"

module Animal
	def make_sound
		puts "Grrrr"
	end
end

class Dog
	include Animal
end

rover = Dog.new
rover.make_sound

class Scientist
	include Human
	prepend Smart 	# Any method in Smart will superseed those in the class

	def act_smart
		return "E = mass times velocity of light squared"
	end
end

einstein = Scientist.new
einstein.name = "Einstein"
puts "Scientist name is " + einstein.name

einstein.run
puts einstein.name + " says " + einstein.act_smart


