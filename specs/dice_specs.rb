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

  def test_set_dice_number
    assert_equal(3, @dice.number= 3)
  end

end
