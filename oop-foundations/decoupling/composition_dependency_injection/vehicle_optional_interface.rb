class VehicleOptionalInterface
  def self.new(*, **, &block)
    raise 'Must define price method' unless defined?(super.price)

    super
  end
end
