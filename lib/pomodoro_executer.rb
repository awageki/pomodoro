# frozen_string_literal: true

require_relative 'pomodoro'
require_relative 'short_break'
require_relative 'long_break'

# ポモドーロタイマークラス
class PomodoroExecuter
  ONE_CYCLE_MINUTES = ((Pomodoro::MINUTES + Break::SHORT_MINUTES) * 4) + Break::LONG_MINUTES

  def initialize
    @pomodoro_count = 0 # インスタンス変数→同じインスタンスの内部でのみ共有される変数
    @short_break_count = 0
    @long_break_count = 0
    @four_pomodoro_cycle_count = 0
  end

  def run
    loop do # 中断されない限り永遠に繰り返す、無限ループ
      pomodoro_cycle_with_logs
      long_break_with_logs
      @four_pomodoro_cycle_count += 1
      puts "4ポモドーロセット#{ONE_CYCLE_MINUTES * @four_pomodoro_cycle_count}分経過"
    end
  end

  private

  def pomodoro_cycle_with_logs # メソッド名はスネークケース
    4.times {|i|
      pomodoro_with_logs
      short_break_with_logs
      i += 1
      puts "ポモドーロセット#{(Pomodoro::MINUTES + Break::SHORT_MINUTES) * i}分経過"
    }
  end

  def pomodoro_with_logs
    @pomodoro_count += 1
    puts "ポモドーロ#{@pomodoro_count}回目スタート"
    Pomodoro.new.run
    puts "ポモドーロ#{@pomodoro_count}回目終了(#{Pomodoro::MINUTES * @pomodoro_count}分経過)"
  end

  def short_break_with_logs
    @short_break_count += 1
    puts "ショートブレイク#{@short_break_count}回目スタート"
    ShortBreak.new.run
    puts "ショートブレイク#{@short_break_count}回目終了(#{Break::SHORT_MINUTES * @short_break_count}分経過)"
  end

  def long_break_with_logs
    @long_break_count += 1
    puts "ロングブレイク#{@long_break_count}回目スタート"
    LongBreak.new.run
    puts "ロングブレイク#{@long_break_count}回目終了(#{Break::LONG_MINUTES * @long_break_count}分経過)"
  end
end
