require("minitest/autorun")
require("minitest/rg")
require_relative("../dice")

class DiceTest < MiniTest::Test

  def setup
    @dice = Dice.new(0)
  end

  def test_dice_number
    assert_equal(0, @dice.number())
  end

end
