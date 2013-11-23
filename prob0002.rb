# 2. Prime Generator
# Peter wants to generate some prime numbers for his cryptosystem. Help him! Your task is to generate all prime numbers between two given numbers!
# Input: The input begins with the number t of test cases in a single line (t<=10). In each of the next t lines there are two numbers m and n (1 <= m <= n <= 1000000000, n-m<=100000) separated by a space.
# Output: For every test case print all prime numbers p such that m <= p <= n, one number per line, test cases separated by an empty line.

# checks if param is prime
def is_prime(num)
  return false if num < 2
  i = 2
  while i <= Math.sqrt(num).to_i
    if (num % i) == 0
      return false
    else
      i += 1
    end
  end
  true
end

# check every num from n to m. if prime, add to array  
def get_primes(array)
  n = array[0]
  m = array[1]
  prime_array = []
  i = n
  while i <= m
    if is_prime(i)
      prime_array << i
    end
    i += 1
  end
  # returns array of primes
  prime_array
end

num_times = gets.chomp.to_i
ranges = []

num_times.times do
  range_str = gets
  # splits string, turns to int array, adds array to ranges
  ranges << range_str.split(' ').map(&:to_i)
end

i = 0
while i < num_times
  puts get_primes(ranges[i])
  puts
  i += 1
end

















