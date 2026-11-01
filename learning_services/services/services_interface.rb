module Services
  class ServiceInterface
    attr_reader :result, :errors

    def initialize(*args, **kargs, &block)
      @args = args
      @kargs = kargs
      @block = block

      @result = nil
      @errors = []
    end

    def self.call(...) = self.new(...).call

    def call
      run
      self
    end

    private

    attr_accessor :args, :kargs, :block

    def run
      raise NotImplementedError, 'subclasses must implement run method.'
    end
  end
end
