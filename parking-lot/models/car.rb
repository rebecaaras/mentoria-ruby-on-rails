class Car
  attr_reader :model, :year
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

  def self.persist
    File.open("saida.txt", 'w') do |file|
      @@cars.each do |car|
        file.puts car.full_name
      end
    end
  end

  def self.load
    File.open("saida.txt", "r") do |file|
      file.each_line do |line|
        parse_line(line)
      end
    end
  end

  def self.parse_line(line)
    model, year = line.split(' - ')
    create(model, year.to_i)
  end

end
