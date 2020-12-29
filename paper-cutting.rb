#!/bin/ruby
//https://www.hackerrank.com/challenges/p1-paper-cutting/problem
require 'json'
require 'stringio'

# Complete the solve function below.
def solve(n, m)
    return n*m-1;

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nm = gets.rstrip.split

n = nm[0].to_i

m = nm[1].to_i

result = solve n, m

fptr.write result
fptr.write "\n"

fptr.close()
