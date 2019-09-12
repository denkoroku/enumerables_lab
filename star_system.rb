class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    @planets.map {|planet| planet.name}
  end

  def get_planet_by_name(planet_name)
    @planets.find {|planet| planet.name == planet_name}
  end

  def get_largest_planet
   diameters= @planets.map {|planet| planet.diameter}
   p @planets.find {|planet| planet.diameter == diameters.sort.pop}
  end

  def get_smallest_planet
   diameters= @planets.map {|planet| planet.diameter}
   p @planets.find {|planet| planet.diameter == diameters.sort.shift}
  end

  def get_planets_with_no_moons
    p @planets.find_all {|planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(number)
    the_answer =  @planets.find_all {|planet| planet.number_of_moons > number}
  p  the_answer.map {|planet| planet.name}
  end

  def get_number_of_planets_closer_than(distance)
    the_answer =  @planets.find_all {|planet| planet.distance_from_sun < distance}
    final = the_answer.map {|planet| planet}
    return final.count
  end

  def get_total_number_of_moons
    total_array = @planets.map { |planet| planet.number_of_moons}
    p total_array.reduce{|sum, num| sum + num }
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
     distance= @planets.map {|planet| planet.distance_from_sun}
     sorted_distance = distance.sort
     banana = []
     potato = sorted_distance.each {|value| if value == @planets.each{|planet| planet.distance_from_sun}}
p banana << potato

  end

end
