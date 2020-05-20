require 'docking_station'

describe DockingStation do
  subject { docking_station }

  context "release a bike" do
    let(:docking_station) { DockingStation.new }
    it { should respond_to :release_bike }
  end
  # it "responds to release bike" do
  #   expect(subject).to respond_to :release_bike
  # end

 
end