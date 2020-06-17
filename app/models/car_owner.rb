class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def owned_cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    self.owned_cars.map do |car|
      car.mechanic
    end
  end

  def self.average_amt_cars
    total = CarOwner.all.sum do |car_owner|
      car_owner.owned_cars.length
    end
    total.to_f / CarOwner.all.length
  end


end

#carowner has many cars
#car belongs to mechanic
#mechanic has many cars
