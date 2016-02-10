# class Customer
	# attr_accessor :name, :email
	
	# def initialize(name, email)
		# @name, @email = name, email
	# end
# end

Customer = Struct.new(:name, :email) do
	def name_with_email
		"#{name} <#{email}>"
	end
end

customer = Customer.new("Jason", "jason@teamtreehouse.com")
puts customer.inspect
puts customer.name_with_email

customer.each_pair do |name, value|
	puts "#{name} - #{value}"
end