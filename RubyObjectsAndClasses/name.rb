class Name
	#attr_reader :title, :first_name, :middle_name, :last_name
	#attr_writer :title
	attr_accessor :title, :first_name, :middle_name, :last_name
	
	def initialize(title, first_name, middle_name, last_name)
		@title = title
		@first_name = first_name
		@middle_name = middle_name
		@last_name = last_name
	end
	
	def full_name
		first_and_middle_name = @first_name + " " + @middle_name
		first_and_middle_name + " " + @last_name
	end
	
	def full_name_with_title
		@title + " " + full_name()
	end
	
	def to_s
		full_name_with_title
	end
	
	#attr_reader replaces all of these methods below
	# def title
		# @title #return keywork is optional
	# end
	
	# def first_name
		# @first_name
	# end
	
	# def middle_name
		# @middle_name
	# end
	
	# def last_name
		# @last_name
	# end
	
	# def title=(new_title)
		# @title = new_title
	# end
	
end

name = Name.new("Mr.", "Jason", "", "Seifer")
puts name.full_name_with_title

nick = Name.new("Mr.", "Nick", "", "Pettit")
puts nick.full_name_with_title
	 
puts "Title: #{name.title}"
name.title = "Dr."
puts "Title: #{name.title}"

puts name
puts name.inspect