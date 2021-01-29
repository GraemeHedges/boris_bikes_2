require "./lib/bike.rb"

class DockingStation
    
    attr_reader :bikes, :DEFAULT_CAPACITY
    def initialize
      @DEFAULT_CAPACITY = 20
      @bikes = []
    end
    
    def release_bike
        raise "There are no bikes to release" if empty?
        @bikes.pop
    end

    def dock(bike)
        raise "This dock is full" if full?
        @bikes << bike
    end

    private
    def full?
        @bikes.length >= @DEFAULT_CAPACITY 
    end

    def empty?
        @bikes.empty?
    end
    
end