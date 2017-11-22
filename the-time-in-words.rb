#!/bin/ruby
#https://www.hackerrank.com/challenges/the-time-in-words/problem
def the_time_in_words(h,m)
	arr = ["o' clock",'one','two','three','four','five','six','seven','eight','nine','ten','eleven','twelve','thirteen','fourteen','quarter','sixteen','seventeen','eighteen','nineteen',
	  'twenty','twenty one','twenty two','twenty three','twenty four','twenty five','twenty six','twenty seven','twenty eight','twenty nine',
	  'half','thirty','thirty one','thirty two','thirty three','thirty four','thirty five','thirty six','thirty seven','thirty eight','thirty nine',
	  'forty','forty one','forty two','forty three','quarter','quarter','forty six','forty seven','forty eight','forty nine',
	  'fifty','fifty one','fifty two','fifty three','fifty four','fifty five','fifty six','fifty seven','fifty eight','fifty nine']

	if m==0
		puts arr[h] +' '+ arr[m]
	elsif m==15
		puts arr[m] + ' past '  +arr[h]
	elsif m<30
		puts arr[m] + ' minutes past '  +arr[h]
	elsif m==30
		puts arr[m] +' past '+ arr[h]
	elsif m==45
		puts arr[m] +' to '+ arr[h+1]
	elsif m>30
		puts arr[60-m] +' minutes to '+ arr[h+1]
	end
end
h = gets.strip.to_i
m = gets.strip.to_i
the_time_in_words(h,m)

