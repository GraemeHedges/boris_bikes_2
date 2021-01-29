require 'docking_station'

describe DockingStation do
describe 'realease_bike' do
	it 'responds to release_bike' do
	expect(subject).to respond_to :release_bike
	end
 end
  it 'release a bike' do
	bike = Bike.new
	expect(bike.working?).to eq true
 end
	it 'gives an error message when it has no bikes' do
		expect{ raise subject.release_bike}.to raise_error("There are no bikes to release")
	end
describe 'dock' do
	it 'gives error message when dock is full' do
		subject.DEFAULT_CAPACITY.times { subject.dock(Bike.new)}
		expect{ raise subject.dock(Bike.new)}.to raise_error("This dock is full")
	end
	it 'docks the bike' do 
	bike = Bike.new
 expect(subject.dock(bike)).to eq [bike]
end
end
describe 'bike' do
	it 'responds to the bike' do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.bikes).to eq [bike]
	end
end
end