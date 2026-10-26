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

  # deletes first result
  def self.delete(model = nil, year = nil)
    return unless model || year
    self.find(model, year).delete
  end

  def delete
    @@cars.delete(self)
  end

  # how should I use both arguments as optional, but at least one should be given?
  # what are other ways to implement this same function ?
  # how do I deal with trailing filters?
  def self.find_all(model = nil, year = nil)
    cars = @@cars.dup
    return cars unless model || year
    cars = cars.filter { |car| car.model == model } if model
    cars = cars.filter { |car| car.year == year} if year
    cars
  end
  
  # returns first result maching the query
  def self.find(model = nil, year = nil)
    self.find_all(model, year).first
  end

  def full_name
    "#{model} - #{year}"
  end
  
  private
  attr_accessor :model, :year
end
binding.irb
