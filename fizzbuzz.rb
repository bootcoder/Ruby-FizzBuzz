##########################
# RUBY FIZZBUZZ  NUMBERS #
##########################
### Hunter T. Chapman  ###
## bootcoder@gmail.com  ##
##########################

# require 'awesome_print'

##########################
# 			PSEUDO CODE
##########################
=begin

***INPUT***

input1 first divisor to check
input2 second divisor to check
input3 the number through which to count
EX: 3 5 10

***OUTPUT***
for each input print out asingle line containing 1..INPUT3
Where Fizz REPLACE the num with F
Where Buzz REPLACE the num with B
Where Both REPLACE the num with FB
EX: 1 2 F 4 B F 7 8 F B


*** CODE ***
write a program which accepts ARGV[0] with a file name
write a function which parses through ARGV[0]
for each line in ARGV[0] send the line to a function to solve for FizzBuzz

write a function to solve FizzBuzz which takes ONE input which is an array or three integers
arr[0] == (x) == FIZZ divisor
arr[1] == (y) == BUZZ divisor
arr[2] == (z) == range to check

iterate through nums until you reach arr[2]
for each num check against arr[0] && arr[1] and replace as needed
if no F || B print the given num

=end


##########################
# 			INITIAL CODE
##########################

def fizzbuzz
	puts "ERROR: Please give a valid filename as an argument." if ARGV[0] == nil
	File.readlines(ARGV[0]).each do |line|
		line.gsub!("\n", "") if line.include? "\n"
		fizzbuzz_Check(line.split(" ")) unless line.split[0] == nil
	end
end


def fizzbuzz_Check(fb_arr)
	fb_arr.map!(&:to_i)
	fb_string = ""
	
	for i in 1..fb_arr[2]
		if ( i % fb_arr[0] == 0 && i % fb_arr[1] == 0 )
			fb_string += "FB "
		elsif ( i % fb_arr[0] == 0  )
			fb_string += "F "
		elsif ( i % fb_arr[1] == 0  )
			fb_string += "B "
		else
			fb_string += "#{i} "
		end
	end

	puts fb_string.strip
end

##########################
# 		ACTIONABLE CODE
##########################

fizzbuzz

##########################
# 			TEST CODE
##########################

# ap fizzbuzz_Check([3,5,15]) == "1 2 F 4 B F 7 8 F B 11 F 13 14 FB"
# ap fizzbuzz_Check([4,6,48]) == "1 2 3 F 5 B 7 F 9 10 11 FB 13 14 15 F 17 B 19 F 21 22 23 FB 25 26 27 F 29 B 31 F 33 34 35 FB 37 38 39 F 41 B 43 F 45 46 47 FB"

