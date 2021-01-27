require 'docking_station'

describe DockingStation do

    describe "release_bike" do
        it "responds to release_bike" do
            expect(subject.release_bike).to respond_to()
        end

        it "gets a bike, and expects it to be working" do
            bike = subject.release_bike
            expect(bike.working?).to eq true
        end

        it "raises an error if there are no bikes" do
            expect{ raise subject.release_bike }.to raise_error ("There are no bikes available")
        end
    end

    describe "dock" do
        it "docks a bike into the docking station" do
            bike = subject.release_bike
            expect(subject.dock(bike)).to eq bike
        end
    end

    describe "bike" do
        it "responds with the bike in the dock" do
            bike = subject.release_bike
            subject.dock(bike)
            expect(subject.bike).to eq bike
        end
    end

end 
