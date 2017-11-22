#!/bin/ruby
#https://www.hackerrank.com/challenges/apple-and-orange/problem
def apple_and_orange(s, t, a, b, m, n, apple, orange)
	result_a = 0
	result_o = 0

	apple.each do |apple_i|
	  result_a+=1 if (a+apple_i)>=s && (a+apple_i)<=t
	end
	orange.each do |orange_i|
	  result_o+=1 if (b+orange_i)>=s && (b+orange_i)<=t
	end
	puts result_a
	puts result_o
end


s,t = gets.strip.split(' ')
s = s.to_i
t = t.to_i
a,b = gets.strip.split(' ')
a = a.to_i
b = b.to_i
m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
apple = gets.strip
apple = apple.split(' ').map(&:to_i)
orange = gets.strip
orange = orange.split(' ').map(&:to_i)


apple_and_orange(s, t, a, b, m, n, apple, orange)