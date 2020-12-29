#!/bin/ruby
#https://www.hackerrank.com/challenges/summing-the-n-series/problem
#
# Complete the summingSeries function below.
#
def summingSeries(n)
    return (n*n).modulo(10**9+7);
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.to_i

t.times do |t_itr|
    n = gets.to_i

    result = summingSeries n

    fptr.write result
    fptr.write "\n"
end

fptr.close()
