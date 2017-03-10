number_hash = {
	"Pi" => 3.1416,
	"Golden" => 1.618,
	"e" => 2.718
}

puts number_hash["Pi"]

got_characters = Hash["Stark", "Ned", "Stark", "Arya", "Lannister", "Tyrion", "Lannister", "Jaime"]
puts "Stark: " +  got_characters["Stark"]
puts "Lannister: " + got_characters["Lannister"]

#Add to hash
got_characters["Stark"] = "Jon Snow"
puts "Stark: " + got_characters["Stark"]

#Set a default key value
sample_hash = Hash.new("No such key")
puts sample_hash["1"]

#Combine hashes
more_characters = Hash["Martell", "Oberyn", "Drogo", "Khal", "Stark", "Rob"]

#update is destructive merge, replace all the duplicate, in-memory replace
got_characters.update(more_characters)
puts got_characters

#merge should be used to keep the value and needs a variable to store
merged_characters = got_characters.merge(more_characters)
puts merged_characters

#Print out key and value
got_characters.each do |key, value|
	puts key.to_s + ": " + value.to_s
end


puts "Has key Stark? " + got_characters.has_key?("Stark").to_s
puts "Has value Ned? " + got_characters.has_value?("Ned").to_s
puts "Is hash empty? " + got_characters.empty?.to_s
puts "Size of hash: "  + got_characters.size.to_s 

#Delete a key-value
got_characters.delete("Stark")
puts got_characters