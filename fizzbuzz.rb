# Write a program that prints the numbers 1-100, where numbers that are divisible by 3 print the word "Fizz",
# while numbers that are divisible by print "Buzz". If the number is divisible by both, print "FizzBuzz".

(1..100).each do |num|
  string = ""
  string += "Fizz" if num % 3 == 0
  string += "Buzz" if num % 5 == 0

  if string == ""
    string = num
  end

  puts string
end
