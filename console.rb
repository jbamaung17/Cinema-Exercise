require("pry")

require_relative('./db/sqlrunner.rb')
require_relative('./models/customers.rb')
require_relative('./models/films.rb')
require_relative('./models/tickets.rb')

Film.delete_all()
Customer.delete_all()
Ticket.delete_all()

film1 = Film.new({'title' => 'A New Hope', 'price' => '5'})
film1.save

film2 = Film.new({'title' => 'The Empire Strikes Back', 'price' => '5'})
film2.save

film3 = Film.new({'title' => "Return of the Jedi", 'price' => '5'})
film3.save

customer1 = Customer.new({'name' => 'Jean', 'funds' => '50'})
customer1.save

customer2 = Customer.new({'name' => 'Ellie', 'funds' = '60'})
customer2.save

customer3 = Customer.new({'name' => 'Christie', 'funds' => '70'})
customer3.save

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket1.save

ticket2 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket2.save

ticket3 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film3.id})
ticket3.save

binding.pry
nil
