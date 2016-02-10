require "time"

puts Time.new
puts Time.new(2014)
time = Time.new
puts time.hour
puts time.min
puts time.sec
puts time.month
puts time.day
puts time.year
puts time + 1 # adds 1 second
puts time + 60 # adds 60 sec or 1 min
puts time + (60 * 60) # adds 1 hr
puts time < Time.now
puts Time.now > time
puts time.to_a
puts time.strftime("%b %d %Y")