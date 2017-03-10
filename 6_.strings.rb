#Single quote vs. double quote
puts 'Single quote: 4 + 5 equals to #{4 + 5}\n\n'
puts "Double quote: 4 + 5 equals to #{4 + 5}\n\n"

#Multiline string
multiline_string = <<EOM
This is a multiline string which contains
multiple lines.
4 + 5 equlas to #{4 + 5}\n\n
EOM
puts multiline_string

#String operations
first_name = "Fahim"
last_name = "Choudhury"
middle_name = "Masud"

# Combining string with interpolation
full_name = "#{first_name} #{middle_name} #{last_name}"
puts full_name

# Check if a string contains a particular string
puts "Contains #{first_name}?: " + full_name.include?("Fahim").to_s

# Length of a string
puts "Length: " + full_name.size.to_s

#Count the number of vowels and consonants
puts "Vowels: " + full_name.count("aeiou").to_s
puts "Consonants: " + full_name.count("^aeiou").to_s

#start with
puts "Starts with Choudhury?: " + full_name.start_with?("Choudhury").to_s

#Index
puts "Index: " + full_name.index("Masud").to_s

#String equality
puts "a == a : " + ("a" == "a").to_s

#Object equality
puts "\"a\".equal?(\"a\") : " + ("a".equal?"a").to_s
puts first_name.equal?(first_name)

#Changing case
puts full_name.upcase
puts full_name.downcase
puts full_name.swapcase

#Striping white space
full_name = "		" + full_name
puts "Name with white space #{full_name}"

fll_name = full_name.lstrip
full_name = full_name.rstrip
full_name = full_name.strip

puts full_name

#Formatting strings
puts full_name.rjust(20, '*')
puts full_name.ljust(20, '*')
puts full_name.center(20, '*')

#Chop removes the last character
puts full_name.chop

#Chomp removes \n or a specific string
puts full_name.concat("\n\n")
puts "After removing \\n: " + full_name.chomp

# Delete specific character
puts full_name.delete("aou")

#Split string into an array: // means if there is any new character
name_array = full_name.split(//)
puts name_array

#Split string into an array if there is any blank space
name_array = full_name.split(/ /)
puts full_name

#String conversion
puts "a".to_i
puts "2".to_f
puts "2".to_sym