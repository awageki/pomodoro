class TimerBase
  def initialize(minutes:)
    @end_time = Time.now + minutes * 60
  end
  
  def run
    @end_time
  end
end