class CarOwner

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      if car.car_owner == self
        car
      end
    end
  end

  def mechanics
    self.cars.select do |car|
      car.mechanic
    end
  end

  def self.average_cars
    arr = []
    self.all.map do |owner|
      arr << owner.cars.size
    end
    (arr.sum.to_f)/self.all.size
  end

  def buy_car(car)
    car.car_owner = self
  end

  def service(car, mechanic)
    if mechanic.specialty == car.classification
      car.mechanic = mechanic
    else
      "This mechanic does not specialize in your vehicle type.""\n" "Please find a different mechanic."
    end
  end


end
