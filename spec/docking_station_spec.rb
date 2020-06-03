require 'docking_station'
require 'bike'

describe DockingStation do
  context "release a bike" do
    let(:docking_station) { DockingStation.new }
    it { is_expected.to respond_to :release_bike }
  end

  # it "releases working bikes" do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  it { is_expected.to respond_to(:dock).with(1).argument}
  
  it { is_expected.to respond_to(:bike) }
  
  describe "#release_bike" do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock Bike.new
      end
    end

    it "has a default capacity" do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    describe 'initialization' do
      subject { DockingStation.new }
      let(:bike) { Bike.new }
      it 'defaults capacity' do
        described_class::DEFAULT_CAPACITY.times do
          subject.dock(bike)
        end
        expect{ subject.dock(bike) }.to raise_error "Docking station full"
        
        
      end
    end
  end
end
