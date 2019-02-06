require "docking_station"
describe DockingStation do
  it {is_expected.to respond_to :release_bike}



    it "can get a bike and its working" do
      station = DockingStation.new
      bike = station.release_bike
      expect(bike.working?).to eq true
    end
end
