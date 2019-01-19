require_relative 'city'

def distancer(loc1, loc2)
   Math.hypot(loc2.x - loc1.x, loc2.y - loc1.y)
end

def nearest_neighbor(graph_of_cities, current_city)
  route = [current_city.name]
  until graph_of_cities[0].nil?
    next_city = graph_of_cities[0]
    graph_of_cities.each do |option|
      if distancer(current_city, next_city) > distancer(current_city, option)
        next_city = option
      end
    end
    current_city = next_city
    graph_of_cities.delete(next_city)
    route.push(current_city.name)
  end
  route
end

home = City.new("irvine", 0, 0)
city2 = City.new("boise", 1, 9)
city3 = City.new("seattle", 0, 9)
city4 = City.new("london", 22, 10)
city5 = City.new("new york", 10, 10)
city6 = City.new("budapest", 25, 8)
city7 = City.new("atlanta", 10, 0)

city_graph = [city2, city4, city3, city7, city6, city5]

trip_route = nearest_neighbor(city_graph, home)
puts trip_route
