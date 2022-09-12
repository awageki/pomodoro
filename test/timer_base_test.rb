require 'minitest/autorun'
require_relative '../lib/timer_base'

class TimerBaseTest < Minitest::Test
  def test_timer_base
    timer_base = TimerBase.new(minutes:15)
    assert_equal Time.now + 15 * 60, timer_base.run
  end
end