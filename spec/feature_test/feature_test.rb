require './lib/docking_station.rb'
require './lib/bike.rb'
bike = Bike.new
docking_station = DockingStation.new
bike = docking_station.release_bike
bike.working?
docking_station.dock(bike)
docking_station.bike

