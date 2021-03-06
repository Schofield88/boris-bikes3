require "docking_station"
describe DockingStation do
  it {is_expected.to respond_to :release_bike}

  it 'can release a bike if there is a bike in the docking station' do
    station = DockingStation.new
    red_bike = Bike.new
    station.dock(red_bike)

    expect(station.release_bike).to eq red_bike
  end

  it 'cannot release a bike if there is not a bike in the docking station' do
    station = DockingStation.new

    expect{station.release_bike}.to raise_error("no bikes to release")

  end

  it "can get a bike and its working" do
      station = DockingStation.new
      bike1 = Bike.new
      station.dock(bike1)
      bike = station.release_bike
      expect(bike.working?).to eq true
    end

  it 'can make docking possible' do
    expect(subject).to respond_to :dock
  end

   it "can get a bike and dock" do
     bike = Bike.new
     subject.dock(bike)
     expect(subject.bikes).to include bike

   end

   it "can dock up to maximum capacity" do
     shed = DockingStation.new
     shed.capacity.times {shed.dock Bike.new}
     expect(shed.bikes.length).to eq(shed.capacity)
   end

  it "will not let you dock more than maximum capacity" do
    station = DockingStation.new
    station.capacity.times {station.dock Bike.new}

    expect{station.dock(Bike.new)}.to raise_error("Too many bikes")
  end

  it "tells us that the default capacity is 20" do
    station = DockingStation.new
    expect(station.capacity).to eq 20

  end

  it "allows us to set the capacity to 50" do
    station = DockingStation.new(50)
    expect(station.capacity).to eq 50

  end

  end
