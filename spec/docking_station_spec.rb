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
    expect(subject.bike).to eq bike
  end

  it "raises an error if there are no bikes" do
    expect { subject.release_bike }.to raise_error "There are no bikes."
  end

  it "raises an error if there is already a bike" do
    bike = Bike.new
    expect{subject.dock(bike)}.to raise_error "There is already a bike here"
  end

end
