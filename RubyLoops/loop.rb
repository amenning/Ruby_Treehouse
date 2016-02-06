loop do # or {
	print "Do you want to continue? (y/n) "
	answer = gets.chomp.downcase
	if answer == "n"
		break
	end	
end # or }