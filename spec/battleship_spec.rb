require 'minitest/autorun'
#require 'minitest/rg'
require './battleship'

class Lab < MiniTest::Test
  def test_let2num()
    num=let2num("a")
    assert_equal(0,num)
  end

end