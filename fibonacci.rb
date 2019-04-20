# Assumptions

# 1. We are assuming output is array of numbers
# 2. Test numbers under 100
# 3. Sequence = adding two numbers will return the next number. A number is the sum of its two prior numbers

# Approach

# 1. Argument is the highest number that the array will take (all numbers are less than or equal)
# 2. Placeholders for two numbers: these will be reassigned for the math
# 3. Add the two placeholders together and push the solution into the array
# 4. Instantiate an array with [0, 1]

def fibonacci_under(number)
  fib_array = [0, 1]
  current_sum = 0

  n1 = fib_array[-2]
  n2 = fib_array[-1]

  while current_sum < number do
    n1 = fib_array[-2]
    n2 = fib_array[-1]

    fib_array << n1 + n2

    current_sum = fib_array[-1] + fib_array[-2]
  end

  p fib_array
end

fibonacci_under(100)
