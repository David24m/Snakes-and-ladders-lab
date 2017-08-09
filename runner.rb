require("minitest/autorun")
require("minitest/rg")
require_relative("players")
require_relative("dice")
require_relative("board")
require_relative("tiles")

class Runner

  def initialize()
    @player1 = Player.new("David", 0, 29)
    @player2 = Player.new("Raul", 0, 29)

    @snake1 = Tiles.new(true, 4)
    @snake2 = Tiles.new(true, 12)
    @snake3 = Tiles.new(true, 1)

    @ladder1 = Tiles.new(true, 6)
    @ladder2 = Tiles.new(true, 15)
    @ladder3 = Tiles.new(true, 17)

    @tile_normal = Tiles.new(false, 0)

    @board = Board.new(
      [@player1, @player2],
      [
        @tile_normal, @ladder1, @tile_normal, @tile_normal, @tile_normal,
        @ladder2, @tile_normal, @tile_normal, @ladder3, @tile_normal,
        @tile_normal, @tile_normal, @snake1, @tile_normal, @tile_normal,
        @tile_normal, @tile_normal, @tile_normal, @tile_normal, @tile_normal,
        @tile_normal, @snake2, @tile_normal, @tile_normal, @tile_normal,
        @tile_normal, @tile_normal, @tile_normal, @snake3, @tile_normal
      ]
    )
  end

  def run_game()
    game_on = true
    while game_on
      @board.play_turn
      if @board.turn.check_win
        game_on = false
      end
    end
  end
end


runner = Runner.new
runner.run_game()
