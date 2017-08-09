require("minitest/autorun")
require("minitest/rg")
require_relative("../board")

class BoardTest < MiniTest::Test


  def setup
    @board = Board.new(["Raul"], (1..50).to_a)
  end

  def test_board_knows_player
    assert_equal(["Raul"], @board.players())
  end

  def test_board_has_tiles
    assert_equal((1..50).to_a, @board.tiles())
  end



end
