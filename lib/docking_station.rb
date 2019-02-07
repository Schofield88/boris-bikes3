require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20


  def initialize
    @bikes = []
    @capacity = 20
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
    @bikes.length == DEFAULT_CAPACITY
  end

  def empty?
    @bikes.length == 0
  end

end
