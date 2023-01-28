array_numbers = [1,2,3,4,5,6,7,8,9,10]

puts array_numbers[0]
puts array_numbers.last
puts array_numbers.length
array_numbers.unshift(0)
array_numbers << 11

i = 0

while i < array_numbers.count do 
x = array_numbers[i] *2
if x.even?
    puts x.to_s + " is an even number"
else
    puts x.to_s + " is an odd number"
end
i += 1
end

array_numbers.select do |a|
    a *= 2
    if a.even?
        puts a.to_s + " is an even number"
    else
        puts a.to_s + " is an odd number"
    end
end
