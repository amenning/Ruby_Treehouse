require "date"
puts Date.new
puts Date.new(2015, 1, 1)
puts Date.new(2014, 7, 4)
puts Date.parse("July 4th, 2014")
puts Date.parse("07/04/2014")
puts Date.strptime("07/04/2014", "%m/%d/%Y")
puts Date.parse('March 1st, 2015')
puts Date.strptime("It's 2015, everyone", "It's %Y, everyone")
puts Date.today
date = Date.today
puts date + 1 #add one day
puts date - 1 #subtract one day
puts date >> 1 #add one month
puts date << 1 #subtract one month
puts date.to_s
puts date.strftime("%Y %m, %d")
puts date.strftime("%m %d, %Y")