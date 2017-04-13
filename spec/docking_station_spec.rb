require "docking_station"
require 'bike'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}

  it "releases good bikes" do
  bike = Bike.new
  expect(bike.working?).to eq true
  end

  it {is_expected.to respond_to(:dock).with(1).argument}

  it "docks something" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike_store).to eq [bike]
  end

  describe "#release_bike" do
    it "raises an error if there are no bikes" do
      expect {subject.release_bike }.to raise_error "There are no bikes."
    end
  end

  describe "#dock" do
    it "raises an error if there are 20 bikes in the store" do
      docking_station = DockingStation.new
      expect { 21.times{docking_station.dock(Bike.new)}}.to raise_error "Docking station full"
    end

    it "docks something" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike_store).to eq [bike]
    end
  end
end
