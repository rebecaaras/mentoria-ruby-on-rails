class Car
  @@cars = []

  def initialize(model, year)
    @model = model
    @year = year

    @@cars << self
  end

  def full_name
    "#{@model} - #{@year}"
  end

  def self.all
    @@cars.dup
  end
end
