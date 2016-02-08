class Monster
	attr_reader :name, :actions
	
	def initialize(name)
		@name = name
		@actions = {
			screams: 0,
			scares: 0,
			run: 0,
			hide: 0
		}
	end
	
	def say(&block)
		print "#{name} says... "
		yield
	end
	
	def scream(&block)
		actions[:screams] += 1
		print "#{name} screams! "
		yield
	end
	
	def scare(&block)
		actions[:scares] += 1
		print "#{name} scares you! "
		yield
	end
	
	def run(&block)
		actions[:run] += 1
		print "#{name} runs! "
		yield
	end

	def hide(&block)
		actions[:hide] += 1
		print "#{name} hides! "
		yield
	end	
	
end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }
puts monster.actions
monster.scream do
	puts "BOO!"
end
puts monster.actions

monster.scare do
	puts "Go away!"
end
puts monster.actions

monster.run do
	puts "Going to get you!"
end
puts monster.actions

monster.hide do
	puts "Running away and hiding!"
end
puts monster.actions