# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/long_break'

class LongBreakTest < Minitest::Test
  def test_long_break
    LongBreak.new.run
  end
end
