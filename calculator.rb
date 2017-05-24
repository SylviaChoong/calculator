require "byebug"
# Building a working calculator with functions +, -, *, /
# Print a string to ask for user first input number
# Print a list to ask user if he wants to add, substract, multiply, divide or equalize the equation
# IF user adds, ask for an input number and puts added number
# ELSIF user substracts, ask for an input number and puts substracted number
# ELSIF user multiply, ask for an input number and puts multiplied number
# ELSE user divides, ask for an input number and puts divided number
# Print the list again after each actions

puts "-------***** Calculator *****-------"
print "*****------- Input a number: "
# check if input is an Integer
num = Integer(gets) rescue false
if num != false
	loop do
		puts "-------***** What do you want to do with the number, " + num.to_s + "? *****-------"
		puts "-------***** Add (+) *****-------"
		puts "-------***** Substract (-) *****-------"
		puts "-------***** Multiply (*) *****-------"
		puts "-------***** Divide (/) *****-------"
		puts "-------***** End (e) *****-------"
		print "-------***** Enter (+) or (-) or (*) or (/): "
		choice = gets.chomp
		if choice == "+"
			print "*****------- Input a number: "
			num1 = Integer(gets) rescue false
			num += num1
		elsif choice == "-"
			print "*****------- Input a number: "
			num1 = Integer(gets) rescue false
			num -= num1
		elsif choice == "*"
			print "*****------- Input a number: "
			num1 = Integer(gets) rescue false
			num *= num1
		elsif choice == "/"
			print "*****------- Input a number: "
			num1 = Integer(gets) rescue false
			num /= num1.to_f
		elsif choice != ("+" || "-" || "*" || "/")
			puts "-------***** Error! Input unknown *****-------"
		end
		print "\n"
		puts "-------***** ************ *****-------"
		puts "-------***** ************ *****-------"
		puts "-------***** ************ *****-------"
		print "\n"
		puts "-------***** Current total number is: " + num.to_s + " *****-------"
		print "\n"
		puts "-------***** ************ *****-------"
		puts "-------***** ************ *****-------"
		puts "-------***** ************ *****-------"
		print "\n"
		break if choice == "e" || ((choice != "+" && choice != "-" && choice != "*" && choice != "/" ))
	end
else
	puts "-------***** Error! Input not a number! *****-------"
end