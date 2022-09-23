# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/pomodoro'

class PomodoroTest < Minitest::Test
  def test_pomodoro
    Pomodoro.new.run
  end
end
