class StationDetails
  attr_reader :name, :street_address, :city, :state, :zip, :fuel_type, :access_times, :latitude, :longitude

  def initialize(attr)
    @name = attr[:fuel_stations][0][:station_name]
    @street_address = attr[:fuel_stations][0][:street_address]
    @city =  attr[:fuel_stations][0][:city]
    @state = attr[:fuel_stations][0][:state]
    @zip = attr[:fuel_stations][0][:zip]
    @fuel_type = attr[:fuel_stations][0][:fuel_type_code]
    @access_times = attr[:fuel_stations][0][:access_days_time]
    @latitude = attr[:fuel_stations][0][:latitude]
    @longitude = attr[:fuel_stations][0][:longitude]
  end
end