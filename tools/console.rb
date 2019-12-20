require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

Pry.start

ferrari_430 = Car.new('Ferrari', 'Scuderia 430', 'Italian Sport')
audi_r8_1 = Car.new('Audi', 'R8 e-tron', 'German Sport')
audi_r8_2 = Car.new('Audi', 'R8 e-tron', 'German Sport')
prius = Car.new('Toyota', 'Prius', 'Japanese Car')
mustang = Car.new('Ford', 'Mustang', "American Car")
cadillac_cts = Car.new('Cadillica', 'CTS', "American Car")
bmw_7 = Car.new('BMW', '7-series', 'German Sport')

jamal = CarOwner.new('Jamal Shareef')
princess = CarOwner.new('Princess Shareef')
rahsaan = CarOwner.new('Rahsaan Shareef')
naeem = CarOwner.new("Na'eem Shareef")

gus = Mechanic.new('Gus Wallace', 'American Car')
saul = Mechanic.new('Saul Politano', 'Italian Sport')
gunther = Mechanic.new('Gunther Bjorn', 'German Sport')
mike = Mechanic.new('Michael Williams', 'Japanese Car')

jamal.buy_car(audi_r8_1)
jamal.buy_car(cadillac_cts)

rahsaan.buy_car(ferrari_430)
rahsaan.buy_car(mustang)

princess.buy_car(audi_r8_2)

naeem.buy_car(prius)
naeem.buy_car(bmw_7)

jamal.service(audi_r8_1, gunther)
jamal.service(audi_r8_1, gus)

rahsaan.service(ferrari_430, saul)

princess.service(audi_r8_2, gunther)

naeem.service(prius, mike)
naeem.service(bmw_7, gunther)

CarOwner.all

Car.all

Mechanic.all

jamal.cars
rahsaan.cars

naeem.mechanics
jamal.mechanics

CarOwner.average_cars

gunther.cars
gunther.car_owners
gunther.car_owners_names
