class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

=begin

At this point, there is no need for the attr_accessor :database_handle.
No need to expose information when there isn't a need for it.
At the least, set the attr_accessor to private.

=end
