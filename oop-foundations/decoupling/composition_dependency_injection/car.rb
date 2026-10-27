class Car
  def initialize(*components)
    @components = components
    @price = 1.0
  end

  def price
    @components.reduce(@price) do |current_price, component|
      current_price + component.price
    end
  end
end
