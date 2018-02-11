require_relative('../db/sqlrunner.rb')
require_relative('./films.rb')
require_relative('./customers.rb')

class Ticket

  attr_reader :id
  attr_accessor :customer_id, :film_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @customer_id = options['id'].to_i
    @film
  end



end
