module CoordinateUtils

  EARTH_RADIUS = 6371.0 # in KM

  #Using Haversine formula
  def self.distance_between_coordinates(coordinate_one, coordinate_two)

    latitude_one_in_radians = to_radians(coordinate_one.latitude)
    latitude_two_in_radians = to_radians(coordinate_two.latitude)

    longitude_one_in_radians = to_radians(coordinate_one.longitude)
    longitude_two_in_radians = to_radians(coordinate_two.longitude)

    #delta
    delta_latitude  = latitude_two_in_radians  - latitude_one_in_radians
    delta_longitude = longitude_two_in_radians - longitude_one_in_radians

    angle = (Math.sin(delta_latitude / 2))**2 + Math.cos(latitude_one_in_radians) *
    (Math.sin(delta_longitude / 2))**2 * Math.cos(latitude_two_in_radians)

    c = 2 * Math.atan2(Math.sqrt(angle), Math.sqrt(1-angle))

    c * EARTH_RADIUS
  end

  def self.to_radians(degree)
    (degree * Math::PI)/180 if degree
  end

  def self.to_degree(radians)
    (radians * 180)/Math::PI if radians
  end
end
