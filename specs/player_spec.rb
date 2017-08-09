require("minitest/autorun")
require("minitest/rg")
require_relative("../players")
require_relative("../dice")

class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new("David", 0)
  end

  def test_player_has_name
    assert_equal("David", @player.name())
  end

  def test_player_position
    assert_equal(0, @player.position())
  end

  def test_player_move
    @player.move_to(10)
    assert_equal(10, @player.position())
  end



end
