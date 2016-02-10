require "logger"

puts logger = Logger.new(STDOUT)
puts logger.info "This is an info message"
puts logger.debug "This is a debugging message"
puts logger.warn "Warning message"
puts logger.fatal "Fatal message"

puts logger = Logger.new("log.txt")
puts logger.info "This is a test"
puts name = "Jason"
puts logger.info "The name is #{name}"