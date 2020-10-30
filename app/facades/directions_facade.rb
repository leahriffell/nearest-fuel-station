class DirectionsFacade
  def self.directions(start_address, end_address)
    DirectionDetails.new(DirectionsService.get_directions(start_address, end_address))
  end
end