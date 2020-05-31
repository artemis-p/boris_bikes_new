require 'docking_station'

describe DockingStation do
  # subject { docking_station }

  context "release a bike" do
    let(:docking_station) { DockingStation.new }
    it { is_expected.to respond_to :release_bike }
  end


  it "releases working bikes" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument}
  
  it { is_expected.to respond_to(:bike) }
  
  it 'docks something' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
