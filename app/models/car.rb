class Car

  @@all = []

  attr_accessor :car_owner, :mechanic
  attr_reader :make, :model, :classification

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    arr = []
    self.all.map do |car|
      arr << car.classification
    end
    arr.uniq
  end

  def mechanics
    Mechanics.all.select do |mechanic|
      mechanic.specialty == self.classification
    end
  end

end
