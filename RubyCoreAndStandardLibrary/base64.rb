require "base64"

puts message = "Welcome to Treehouse"
puts encoded = Base64.encode64(message)
puts Base64.decode64(encoded)
puts Base64.urlsafe_encode64(message)