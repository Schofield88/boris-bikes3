require_relative 'bike'

class DockingStation
attr_reader :bike


  def release_bike
    if @bike == nil
      raise("no bikes to release")
    else
      @bike
    end

  end

  def dock(bike)
    raise("Too many bikes") if @bike != nil
    @bike = bike
  end
end
