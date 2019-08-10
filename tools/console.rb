require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Al")
co2 = CarOwner.new("Brittany")
co3 = CarOwner.new("Carl")

m1 = Mechanic.new("Xavier", "clunker")
m2 = Mechanic.new("Yves", "exotic")
m3 = Mechanic.new("Zack", "classic")

c1 = Car.new("Ford", "Pinto", "clunker", co1, m1)
c2 = Car.new("Ferrari", "Testarosa", "exotic", co2, m2)
c3 = Car.new("Plymouth", "Barracuda", "classic", co3, m3)

Pry.start
puts "Done."
