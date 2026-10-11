require_relative 'models/car'

class App
  def self.call
    # #new is a class method which creates an instance of the class
    # switches contexts to the instance and triggers the initialize method
    # within the instance
    a = Car.new('pajero', 1999)
    b = Car.new('astra', 1995)
    c = Car.new('spin', 2020)
  end
end

App.call
