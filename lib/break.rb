# frozen_string_literal: true

require_relative 'timer_base'

# 休憩クラス
class Break < TimerBase
  SHORT_MINUTES = 5
  LONG_MINUTES = 15

  def initialize(type:) # キーワード引数
    minutes = case type
              when :short # シンボル、オブジェクトで文字列ではない（書き換えれない、同値ならば必ず同一、処理が高速）
                SHORT_MINUTES
              when :long
                LONG_MINUTES
              end
    super(minutes:) # 継承元のクラス（スーパークラス）のinitializeメソッドを呼び出すことができる
  end
end
