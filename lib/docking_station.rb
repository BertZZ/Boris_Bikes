require_relative 'bike'

  class DockingStation

  def initialize
    @bike_store = []
  end

  def release_bike
    if @bike_store == []
      raise "There are no bikes."
    else
     @bike_store.pop
    end
  end

  def dock(bike)
    if @bike_store.count >= 19
       raise "Docking station full"
    else
      @bike_store << bike
    end
  end

  attr_reader :bike_store
end
