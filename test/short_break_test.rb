# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/short_break'

class ShortBreakTest < Minitest::Test
  def test_short_break
    ShortBreak.new.run
  end
end
