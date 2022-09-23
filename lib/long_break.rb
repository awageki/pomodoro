# frozen_string_literal: true

require_relative 'break'

# 長い休憩クラス
class LongBreak < Break
  def initialize
    super(type: :long)
  end
end
