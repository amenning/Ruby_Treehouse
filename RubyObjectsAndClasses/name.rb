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
puts name.title + " " +
	 name.first_name + " " +
	 name.middle_name + " " +
	 name.last_name
	 
puts "Title: #{name.title}"
name.title = "Dr."
puts "Title: #{name.title}"