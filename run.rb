require './customer.rb'

customer = Customer.new('Paul')

movie = Movie.new("Superman", Movie::NEW_RELEASE)
rental = Rental.new(movie, 2)
customer.add_rental(rental)

puts customer.statement

puts customer.html_statement

