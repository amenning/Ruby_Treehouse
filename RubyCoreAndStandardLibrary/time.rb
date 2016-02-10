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

puts Time.new
puts time1 = Time.new(2014, 7, 1, 12, 0, 0, "-04:00")
puts time2 = Time.new(2014, 7, 1, 12, 0, 0, "-05:00")
puts time2 = Time.new(2014, 7, 1, 11, 0, 0, "-05:00")
puts time1 == time2
puts time1.dst?
puts utc_time1 = time1.dup.utc
puts utc_time1.utc_offset
puts time1.utc_offset

