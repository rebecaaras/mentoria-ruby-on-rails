class Person
  attr_accessor :name, :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end

  def greeting
    puts "Hello, my name is #{name}!"
  end
end
