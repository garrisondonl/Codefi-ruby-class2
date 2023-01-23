name = "Donald"

puts "My name in all caps is #{name.upcase}"
puts "My name in in all lower case is #{name.downcase}"
puts "MY nickname is #{name[0..2]}"
puts "My name as an array is #{name.split('')}"
puts "Is my name a number #{name.match?(/\A-?\d+\Z/)}"