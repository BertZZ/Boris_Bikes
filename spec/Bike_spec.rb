require "docking_station"

describe Bike do
  it { is_expected.to be_a Bike }
  it { is_expected.to respond_to(:working?) }

it  "can be reported broken" do
  subject.report_broken
  expect(subject.working?).to be_falsey
end
end
