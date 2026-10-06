require_relative 'calculator'

class App
  def self.call(*args)
    Calculator.call(*args)
  end
end

operation = ARGV[0]
first = ARGV[1].to_i
second = ARGV[2].to_i

pp App.call(operation, first, second)

