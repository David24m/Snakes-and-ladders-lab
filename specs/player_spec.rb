require("minitest/autorun")
require("minitest/rg")
require_relative("../players")
require_relative("../dice")

class PlayerTest < MiniTest::Test

  def setup
    @player = Player.new("David", 0, 50)
    @player2 = Player.new("Cheater", 50, 50)
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

  def test_end_position
    assert_equal(50, @player.end_position())
  end

  def test_if_player_wins
    assert_equal(false, @player.check_win())
    assert_equal(true, @player2.check_win())
  end

end
