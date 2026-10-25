class Car
  @@cars = []

  def initialize(model, year)
    @model = model
    @year = year
  end

  def self.all
    @@cars.dup
  end

  def self.create(model, year)
    car = Car.new(model, year)
    car.save
    car
  end
  
  def save
    @@cars << self
  end

  def full_name
    "#{@model} - #{@year}"
  end
end
binding.irb
