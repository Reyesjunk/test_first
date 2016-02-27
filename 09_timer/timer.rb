class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    second = "%02d" % (@seconds%60)
    minute = "%02d" % ((@seconds/60)%60)
    hour = "%02d" % (@seconds/3600)
    @total = "#{hour}:#{minute}:#{second}"
  end
end