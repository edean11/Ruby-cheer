require 'date'

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

puts "Hey #{name}, what's your birthday(M-D-Y)?"
birthday = Date.strptime(gets.chomp, '%m-%d-%Y').yday
now = DateTime.now.yday
diff = birthday - now
if diff < 0 && diff > -180
	puts "Awesome!  Your birthday was #{diff*-1} days ago! Happy Belated Birthday!"
	elsif diff < 0 && diff < -180
		puts "Awesome!  Your birthday is in #{365-(diff*-1)} days! Happy Birthday in advance!"
	else puts "Awesome!  Your birthday is in #{diff} days! Happy Birthday in advance!"
end
