require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
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
