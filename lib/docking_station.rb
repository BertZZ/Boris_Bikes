require_relative 'bike'


class DockingStation
  def initialize
    @bikes = []
    puts "Please enter the number of bikes you would like this Docking station to accept"
    input = gets.chomp
    if input == ""
      input = DEFAULT_CAPACITY
    else
      exit unless input == Integer
    end
    @capacity = input
  end

  attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def release_bike
    fail 'There are no bikes' if empty?
    raise "There are no working bikes" if no_working_bikes?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

def no_working_bikes?
  !(bikes.find { |bike| bike.working? })
end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
