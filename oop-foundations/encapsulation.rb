class Car
  # attr_accessor :model, :year

  def initialize(model, year)
    @model = model
    @year = year
  end

  def specification
    puts "#{shout_name} - #{year}"
  end

  def upgrade(year)
    @year = year
  end

  private

  attr_reader :model, :year

  def shout_name
    model.upcase
  end

end

binding.irb
