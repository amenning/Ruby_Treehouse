require "json"

puts json_string = '{"name": "Jason", "location": "Treehouse", "year": 2015}'
puts hash = JSON.parse(json_string)
puts hash["name"]
puts my_hash = {name: "Jason", email: "jason@teamtreehouse.com", favorite_numbers: [1,2,3]}
puts json_output = JSON.dump(my_hash)
puts json_output.class
puts JSON.parse(json_output)

puts JSON.load( File.new("./example.json"))
