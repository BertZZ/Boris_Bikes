require "docking_station"

describe DockingStation do
  it {respond_to(:release_bike)}

  it "releases good bikes" do
    bike = subject.release_bike
    expect(bike.working).to eq true 
  end
end
