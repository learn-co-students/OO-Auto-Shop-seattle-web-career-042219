class CarOwner

  attr_reader :name

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def car_list
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def mechanic_list
    car_list.map do |car|
      car.mechanic
    end
  end

  def self.average_amount_of_cars
    Car.all.size.to_f/CarOwner.all.size
  end
  
end
