file = File.new("authors.out", "w")

file.puts "William Shakespeare"
file.puts "Agatha Cristie"
file.puts "J. K. Rowling"

file.close

puts File.read("authors.out")

#Append
file = File.new("authors.out", "a")
file.puts "G. R. R. Martin"
file.close

puts File.read("authors.out")

#Seperate file, data separated by ,
file = File.new("authors_info.out", "w")
file.puts "William Shakespeare, English, plays and poetry, 4 billion"
file.puts "Agatha Christie, English, detective, 4 billion"
file.puts "Barbara Cartland, English, romance novels, 1 billion"
file.puts "Danielle Steel, English, romance novels, 800 million"
file.close

puts File.read("authors_info.out")

#Cycle through the data to write a sentence
File.open("authors_info.out") do |record|
	record.each do |item|
		#Split each line into 4 parts based on comma
		name, lang, genre, sales = item.chomp.split(', ')
		puts "#{name} was an #{lang} author that specialized in #{genre}. They sold over #{sales} books."
	end
end
