require './coordinate'

class Customers

  attr_accessor :id, :name, :coordinate

  def initialize(id, name, latitude, longitude)
    @id = id
    @name = name
    @coordinate = Coordinate.new(latitude, longitude)
  end

  def to_s

    print = "ID: #{@id} \nName: #{@name}"
    if self.coordinate
      print += "\n"+self.coordinate.to_s
    end

    print
  end

end
