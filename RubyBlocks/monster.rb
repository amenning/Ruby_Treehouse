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
	
	def print_scoreboard
		puts "-"*40
		puts "#{name} scoreboard"
		puts "-"*40
		puts "- Screams: #{actions[:screams]}"
		puts "- Scares: #{actions[:scares]}"
		puts "- Runs: #{actions[:run]}"
		puts "- Hides: #{actions[:hide]}"
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
		yield self if block_given?
	end	
	
	def inspect
		puts "<#{name}, #{actions}>"
	end
	
end

monster = Monster.new("Fluffy")
monster.say { puts "Welcome to my home." }
puts monster.actions
monster.scream do
	puts "BOO!"
end
monster.print_scoreboard

monster.scare do
	puts "Go away!"
end
monster.print_scoreboard

monster.run do
	puts "Going to get you!"
end
monster.print_scoreboard

monster.hide do |m|
	puts "Running away and hiding!"
	puts m.inspect
end
monster.print_scoreboard