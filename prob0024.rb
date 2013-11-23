# 24. Small factorials
# You are asked to calculate factorials of some small positive integers.
# Input: An integer t, 1<=t<=100, denoting the number of testcases, followed by t lines, each containing a single integer n, 1<=n<=100.
# Output: For each integer n given at input, display a line with the value of n!

# returns factorial of num using recursion
def get_fact_rec(num)
  if num == 0
    return 1
  else
    return num *= get_fact(num-1)
  end
end

# returns factorial of num
def get_fact(num)
  factorial = 1
  for i in 1..num
    factorial *= i
  end
  factorial
end

# takes num of testcases followed by str inputs of each testcase
# each testcase string is separated into integers and put in array
# each testcase array is added to the 'testcases' array
num_test = gets.to_i
testcases = []
num_test.times do
  testcase_str = gets
  testcases << testcase_str.split(' ').map(&:to_i)
end

# calls a method for object slot in the array
testcases.each do |testobj|
  # currently only calls method on index 0 of array
  puts get_fact(testobj[0])
end
