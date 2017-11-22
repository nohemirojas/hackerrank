#!/bin/ruby

#https://www.hackerrank.com/challenges/kangaroo
def kangaroo(x1, v1, x2, v2)
  return 'NO' if v1==v2
  t = (x2-x1)/(v1-v2)
  return 'NO' if t<0
  return v1*t+x1 == v2*t+x2 ? 'YES' : 'NO'
end

x1, v1, x2, v2 = gets.strip.split(' ')
x1 = x1.to_i
v1 = v1.to_i
x2 = x2.to_i
v2 = v2.to_i
result = kangaroo(x1, v1, x2, v2)
puts result;