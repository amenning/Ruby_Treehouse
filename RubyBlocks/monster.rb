class Monster
	attr_reader :name
	
	def initialize(name)
		@name = name
	end
	
	def say(&block)
		print "#{name} says... "
		yield
	end
end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }