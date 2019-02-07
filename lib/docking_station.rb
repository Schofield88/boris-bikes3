require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes == nil
      raise("no bikes to release")
    else
      @bikes
    end

  end

  def dock(bike)
    raise("Too many bikes") if @bikes.length >= 20
    @bikes << bike
  end
end
