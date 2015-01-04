# Calculator - A simple calculator to do basic operators. Make it a scientific calculator for added complexity

def addition
	puts 'Enter list of numbers that you want to add, separated by spaces'
	numbers = gets.chomp!.split(' ')
	result = numbers.map(&:to_i).inject(0) {|sum, n| sum + n}
	puts "The result is : #{result}"
end

def subtraction
	puts 'Enter list of numbers that you want to subtract, separated by spaces'
	numbers = gets.chomp!.split(' ')
	result = numbers.map(&:to_i).inject(0) {|sub, n| sub - n}
	puts "The result is : #{result}"
end

def multiplication
	puts 'Enter list of numbers that you want to multiplicate, separated by spaces'
	numbers = gets.chomp!.split(' ')
	result = numbers.map(&:to_i).inject {|mul, n| mul * n}
	puts "The result is : #{result}"
end

def division
	puts 'Enter list of numbers that you want to divide, separated by spaces'
	numbers = gets.chomp!.split(' ')
	result = numbers.map(&:to_i).inject {|div, n| div / n}
	puts "The result is : #{result}"
end

def menu
	puts 'What do you want to do?'
	puts '[1] Addition'
	puts '[2] Subtraction'
	puts '[3] Multiplication'
	puts '[4] Division'

	loop do
		print 'Enter desired number: '
		operation = Integer(gets.chomp!) rescue nil
		if ((1..4).include?(operation)) 
			return operation
		else 
			puts 'You must enter number of desired operation!'			
		end
	end
end

operation = menu
case operation
when 1
	addition
when 2
	subtraction
when 3
	multiplication
when 4
	division
end

