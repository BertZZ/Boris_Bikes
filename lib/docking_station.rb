require_relative 'bike'



class DockingStation
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def release_bike
    fail 'There are no bikes' if empty?
    fail "There are no working bikes" if no_working_bikes?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  def no_working_bikes?
    !(@bikes.find { |bike| bike.working? })
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
