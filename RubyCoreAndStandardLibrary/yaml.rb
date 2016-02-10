require "yaml"

puts my_hash = {name: "Jason", email: "jason@teamtreehouse.com"}
puts YAML.dump(my_hash)
puts my_hash[:year] = 2015
puts YAML.dump(my_hash)

puts people = YAML.load_file("example.yml")
puts yaml_output = people.to_yaml
puts YAML.load(yaml_output)
