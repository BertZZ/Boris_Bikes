class Bike
  def working?
    true
  end


def report_broken
  @broken = true
end

def broken?
  @broken
end

def full?
  @bike_store.count >= 20
end

def empty?
  true
end
end
