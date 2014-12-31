require "bigdecimal/math"
include BigMath

# Print e using built in constant. 
def e_built_in(number_of_decimals)
	printf("%.#{number_of_decimals}f", E(number_of_decimals))
	printf "\n"
end

puts "Enter number of decimals"
number_of_decimals = gets.chomp.to_i
e_built_in(number_of_decimals)
