class Calculator
  #DICT = {
  #  '+' => ->(first, second){self.+(first, second)},
  #  '-' => ->(first, second){self.-(first, second)},
  #  '*' => ->(first, second){self.*(first, second)}
  #}
  def self.call(operation, first, second)
    # This solution takes the operation as a key of the hash
    # that keeps a lambda. It is an alternative to .send.
    # DICT[operation].call(first, second)

    self.send(operation, first, second)
  end

  def self.+(x,y)
    x + y
  end

  def self.-(x,y)
    x - y
  end
  
  def self.*(x,y)
    x * y
  end
end
