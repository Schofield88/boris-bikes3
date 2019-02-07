require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise("no bikes to release") if empty?
    @bikes.first
    end

  def dock(bike)
    raise("Too many bikes") if full?
    @bikes << bike
  end

 private
 
  def full?
    @bikes.length == 20
  end

  def empty?
    @bikes.length == 0
  end

end
