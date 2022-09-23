# frozen_string_literal: true

require_relative 'timer_base'

# ポモドーロクラス
class Pomodoro < TimerBase
  MINUTES = 25

  def initialize(minutes: MINUTES) # キーワード変数
    super
  end
end
