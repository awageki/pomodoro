# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/timer_base'

class TimerBaseTest < Minitest::Test
  def test_timer_base
    # 繰り返し処理の中でカウントダウンを生成してrunの結果と一致しているかを確認する？

    timer_base = TimerBase.new(minutes: 2)
    # assert_equal Time.now + 15 * 60, timer_base.run
    timer_base.run
  end
end
