class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @car_owner = car_owner
    @mechanic = mechanic
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map do |car|
      car.classification
    end.uniq
  end

  def mechanics_that_match
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
