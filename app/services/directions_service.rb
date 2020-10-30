class DirectionsService
  def self.get_directions(start_address, end_address)
    conn = Faraday.new("http://www.mapquestapi.com/directions/v2/route?key=#{ENV['MAP_API_KEY']}&from=#{start_address}&to=#{end_address}")
    response = conn.get
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end