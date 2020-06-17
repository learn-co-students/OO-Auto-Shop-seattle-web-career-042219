class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def all_cars_served
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def all_car_owners
    self.all_cars_served.map do |car|
      car.owner
    end
  end

  def all_owner_names
    self.all_car_owners.map do |owner|
      owner.name
    end
  end




end
