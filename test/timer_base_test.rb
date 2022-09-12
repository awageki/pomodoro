require 'minitest/autorun'
require_relative '../lib/timer_base'

class TimerBaseTest < Minitest::Test
  def test_timer_base
    assert TimerBase
  end
end