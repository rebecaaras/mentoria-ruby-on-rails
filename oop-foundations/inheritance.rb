class Pet
  def make_sound
    "roar!"
  end
end

class Cat < Pet
  def make_sound
    "meow!"
  end
end

class Dog < Pet
  @@dogs = []

  def initialize
    @@dogs << self
  end

  def make_sound
    super.upcase! # super returns the method with same name from the father object
  end

  def self.all
    @@dogs
  end
end

binding.irb
