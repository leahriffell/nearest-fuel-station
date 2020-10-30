class DirectionDetails
  attr_reader :distance, :time_to_destination, :instructions

  def initialize(attr)
    @distance = attr[:route][:distance]
    @time_to_destination = attr[:route][:formattedTime]
    @instructions =  attr[:route][:legs][0][:maneuvers][0][:narrative]
  end
end