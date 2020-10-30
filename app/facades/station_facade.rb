class StationFacade
  def self.closest_electric(lat, long)
    StationDetails.new(StationService.closest_electric_station(lat, long))
  end
end