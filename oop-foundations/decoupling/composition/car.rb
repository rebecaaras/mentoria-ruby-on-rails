class Car
  def initialize
    @air = Air.new
    @radio = Radio.new
  end

  def price
    1.00
  end

  def price_with_air
    price + @air.price
  end

  def price_with_radio
    price + @radio.price
  end

  def price_with_air_and_radio
    price + @radio.price + @air.price
  end
end
