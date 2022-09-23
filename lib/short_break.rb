# frozen_string_literal: true

require_relative 'break'

# 短い休憩クラス
class ShortBreak < Break
  def initialize
    super(type: :short)
  end
end
