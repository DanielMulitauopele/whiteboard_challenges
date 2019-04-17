# Write a program that prints the numbers 1-100, where numbers that are divisible by 3 print the word "Fizz",
# while numbers that are divisible by print "Buzz". If the number is divisible by both, print "FizzBuzz".

a = Time.now.to_f

(1..100).each do |num|
  if (num % 3 == 0) && (num % 5 == 0)
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num
  end
end

puts a
puts Time.now.to_f
