class Mechanic

  @@all = []

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    arr = []
    Car.all.select do |car|
      if car.mechanic == self
        arr << car.car_owner
      end
    end
    arr
  end

  def car_owners_names
    self.car_owners.map do |car_owner|
      car_owner.name
    end
  end


end
