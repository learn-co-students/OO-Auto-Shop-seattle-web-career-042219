require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

rachel = CarOwner.new("Rachel")
colin = CarOwner.new("Colin")
holly = CarOwner.new("Holly")

m1 = Mechanic.new("Jeff", "antique")
m2 = Mechanic.new("Rob", "clunker")
m3 = Mechanic.new("Bob", "antique")

car1 = Car.new("Toyota", "Camry", "antique", rachel, m1)
car2 = Car.new("BMW", "X", "clunker", colin, m2)
car3 = Car.new("Toyota", "Highlander", "antique", holly, m1)
car4 = Car.new("BMW", "S", "clunker", rachel, m2)


binding.pry
