class Coordinate

  attr_accessor :latitude, :longitude

  def initialize(latitude, longitude)
    @latitude = latitude.to_f
    @longitude = longitude.to_f
  end

  def to_s
    "Latitude: #{@latitude} \nLongitude: #{@longitude}"
  end

end
