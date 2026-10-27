require_relative 'vehicle_optional_interface'
require_relative 'car'
require_relative 'air'
require_relative 'radio'
require_relative 'gps'
require_relative 'alarm'

puts Car.new.price
puts Car.new(Air.new).price
puts Car.new(Radio.new).price
puts Car.new(Gps.new).price
puts Car.new(Alarm.new).price
puts Car.new(Air.new, Radio.new).price
puts Car.new(Air.new, Radio.new, Gps.new).price
