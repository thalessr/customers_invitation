require 'rubygems'
require 'open-uri'
require './customers'
require_relative 'coordinate'
require_relative 'coordinate_utils'


class CustomersInvitation


  def url_content(url)
    uri = URI.parse(url)
    open(url).read
  end

  def create_customers_array(content)
    customers = []
    content.each_line do |l|
      line =  eval(l)
      customers.push(Customers.new(line[:user_id], line[:name], line[:latitude], line[:longitude]))
    end
    customers

  end

  def invite(coordinate, distance = 0, customers_array)

    customers_to_be_invited = []

    #read the full list of customers
    customers_array.each do |c|

      if CoordinateUtils.distance_between_coordinates(coordinate, c.coordinate) <= distance.to_f
        customers_to_be_invited.push(c)
      end
    end

    customers_to_be_invited
  end


end
