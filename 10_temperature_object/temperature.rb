class Temperature
  attr_accessor :in_celsius, :in_fahrenheit
  def initialize (options)
    if options[:c] 
      @in_fahrenheit = (options[:c]*1.8) + 32 
      @in_celsius = options[:c]
    end
    if options[:f]
      @in_celsius = ((options[:f]-32)*5.0)/9.0
      @in_fahrenheit = options[:f]
    end
  end

  def self.from_celsius(c)
    new(:c => c)
  end
  def self.from_fahrenheit(f)
    new(:f => f)
  end
end
  class Celsius < Temperature
    def initialize(c)
        super(:c => c)
    end
end
  class Fahrenheit < Temperature
    def initialize(f)
      super(:f => f)
    end
  end
