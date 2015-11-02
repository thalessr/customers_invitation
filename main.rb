require_relative 'customers_invitation'

class Main
  c = CustomersInvitation.new
  content = c.url_content("https://gist.githubusercontent.com/brianw/19896c50afa89ad4dec3/raw/6c11047887a03483c50017c1d451667fd62a53ca/gistfile1.txt")
  array = c.create_customers_array(content)
  #using Dublin office coordinates
  customers_to_be_invited = c.invite(Coordinate.new(53.3381985, -6.2592576), 100, array)
  # sorted by user id
  customers_to_be_invited.sort_by!{|c| [ c.id ]}
  #  output the names and user ids
  customers_to_be_invited.each{ |c| puts "Name: #{c.name} \tID: #{c.id}"}
end
