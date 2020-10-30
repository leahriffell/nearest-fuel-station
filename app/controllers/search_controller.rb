class SearchController < ApplicationController
  def index
    turing_lat = '39.750812'
    turing_long = '-104.996594'
    turing_address = '1331 17th St LL100, Denver, CO 80202'
    # pass above in the params when user selects start point  

    @station = StationFacade.closest_electric(turing_lat, turing_long)

    @directions = DirectionsFacade.directions(turing_address, "#{@station.street_address}, #{@station.city}, #{@station.state} #{@station.zip}")
  end
end
