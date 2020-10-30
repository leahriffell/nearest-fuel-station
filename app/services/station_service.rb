class StationService
  def self.closest_electric_station(lat, long)
    conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest?api_key=#{ENV['STATION_API_KEY']}&format=json&fuel_type=ELEC&latitude=#{lat}&longitude=#{long}&total_results=1")
    response = conn.get
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  private

  # def self.conn
  #   Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest?') do |faraday|
  #     faraday.headers['api_key'] = ENV['STATION_API_KEY']
  #     faraday.headers['format'] = 'json'
  #   end
  # end
end
