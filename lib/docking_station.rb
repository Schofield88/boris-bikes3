require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.length == 0
      raise("no bikes to release")
    else
      @bikes.first
    end

  end

  def dock(bike)
    raise("Too many bikes") if @bikes.length >= 20
    @bikes << bike
  end
end
