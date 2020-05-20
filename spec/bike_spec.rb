require 'bike'

describe Bike do
  subject { bike }

  context "responds to method working" do
    let(:bike) { Bike.new }
    it { is_expected.to respond_to :working?}
  end

end