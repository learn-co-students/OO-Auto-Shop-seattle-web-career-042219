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

  def all_cars_serviced
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners_served
    Car.all.map do |car|
      if car.mechanic == self
        car.car_owner
      end
    end.compact
  end

  def car_owners_served_by_name
    car_owners_served.map do |car_owner|
      car_owner.name
    end.compact
  end

end
