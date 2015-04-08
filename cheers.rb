# print "Hello, what is your name?"
# name = gets.chomp.upcase
# def article(l)
# 	an_letters = "AEIOFHLMRSX"
# 	if an_letters.include?(l)
# 		puts "Give me an #{l}"
# 	else
# 		puts "Give me a #{l}"
# 	end
# end
# name.each_char {|l| article(l)}
# puts "That spells "+name+"!"

def enter_name
	name = ""
	while name.empty?
		puts "Hello, What's your name?"
		name = gets.chomp.upcase
	end
	name
end

name = enter_name
name.gsub!(/[^\w]/,"")
an_letters = "AEIOFHLMRSX"
name.each_char do |letter|
	article = an_letters.include?(letter) ? "an" : "a"
	puts "Give me #{article}... #{letter}!"
end
puts name + "'s just GRAND!"
