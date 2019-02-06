class DockingStation
attr_reader :bike


def release_bike
  new_bike = Bike.new
end
def dock(bike)
    @bike = bike
  end
end

class Bike

  def working?
    return true
  end


end
