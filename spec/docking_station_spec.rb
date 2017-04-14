require "docking_station"
require 'bike'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it "releases good bikes" do
    bike = Bike.new
    expect(bike.working?).to be_truthy
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  describe "#release_bike" do
    it "raises an error if there are no bikes" do
      expect {subject.release_bike }.to raise_error "There are no bikes"
    end
    it "raises an error if there are no working bikes" do
      bike = Bike.new
      bike.report_broken
      subject.dock bike
      expect {subject.release_bike}.to raise_error "There are no working bikes"
  end
end

  describe "#dock" do
    it "raises an error if there are 20 bikes in the store" do
     DockingStation::DEFAULT_CAPACITY.times { subject.dock Bike.new }
     expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

    it "docks something" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end
end
