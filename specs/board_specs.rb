require("minitest/autorun")
require("minitest/rg")
require_relative("../board")
require_relative("../tiles")

class BoardTest < MiniTest::Test


  def setup
    @board = Board.new(["Raul"], (1..50).to_a)
    @board2 = Board.new(["David", "Steve"], (1..50).to_a)
    @board3 = Board.new(["Rob", "Tony", "Jack"], (1..50).to_a)
    # @board4 = Board.new(["Raul"], [@tile_normal, @tile_normal, @tile_special, @tile_special,
    #                               @tile_normal, @tile_normal, @tile_normal, @tile_special, @tile_special,
    #                               @tile_special, @tile_special, @tile_normal])
    #
    # @tile_normal = Tile.new(false, 4)
    # @tile_special = Tile.new(true, 5)
  end

  def test_board_knows_player
    assert_equal(["Raul"], @board.players())
  end

  def test_board_has_tiles
    assert_equal((1..50).to_a, @board.tiles())
  end

  def test_next_turn
    @board.next_turn
    @board2.next_turn
    @board3.next_turn
    @board3.next_turn
    @board3.next_turn
    assert_equal("Raul", @board.turn)
    assert_equal("Steve", @board2.turn)
    assert_equal("Rob", @board3.turn)
  end


end
