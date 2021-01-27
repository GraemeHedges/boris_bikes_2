require "./lib/bike.rb"

class DockingStation

    attr_reader :bike

    def release_bike
        if @bike == nil
            raise "There are no bikes available"
        else   
           @bike
        end
    end

    def dock(bike)
        @bike = bike
    end

end