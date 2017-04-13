#require 'bike'

class DockingStation

def release_bike
  if @bike == nil
    raise "There are no bikes."
  else
  end
end

def dock(bike)
  @bike = bike
end

attr_reader :bike
end
