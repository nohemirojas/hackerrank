#!/bin/ruby

require 'json'
require 'stringio'

# Complete the sumOfGroup function below.
def sumOfGroup(k)
   return k**3
   
#Given the fact that Sn=(A1+An)*n/2
#Given the fact that An= A1+(n-1)d
#Given the problme that A1 = n(n-1) +1 
#Then Sn = n*n*n

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

k = gets.to_i

answer = sumOfGroup k

fptr.write answer
fptr.write "\n"

fptr.close()
