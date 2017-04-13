require_relative 'bike'

class DockingStation

def release_bike
  if @bike == nil
    raise "There are no bikes."
  else
    @bike
  end
end

def dock(bike)
  if @bike == nil
    @bike = bike
  else
    raise "There is already a bike here"
  end
end

attr_reader :bike
end
