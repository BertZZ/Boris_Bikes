require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
    puts "Please enter the number of bikes you would like this Docking station to accept"
    input = gets.chomp
    if input == ""
      input = DEFULT_CAPACITY
    else
    end
    @capacity = input
  end
  DEFULT_CAPACITY = 20

  def release_bike
    fail 'There are no bikes' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
