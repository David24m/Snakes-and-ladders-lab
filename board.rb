require_relative("players")
require_relative("tiles")


class Board

  attr_accessor(:players, :tiles, :turn)

  def initialize(players, tiles)
    @players = players
    @tiles = tiles
    @turn = players[0]
  end

  def next_turn()
    if @players.last == @turn
      @turn = @players.first
    else
      current_index = @players.index(@turn)
      @turn = @players[current_index + 1]
    end
  end

  def play_turn
    @turn.play_turn
    current_player_position = @turn.position
    puts "Current player position: #{current_player_position}"
    if @turn.check_win
      puts "it's over!"
      return
    end
    if @tiles[current_player_position].special
      @turn.move_to(@tiles[current_player_position].end_position)
      puts "Player hit a special tile; going to: #{@tiles[current_player_position].end_position}"
    end
  end

  tile_normal = Tile.new(false, 4)
  tile_special = Tile.new(true, 10)

  player1 = Player.new("Tony", 0, 12)

  board4 = Board.new([player1], [tile_normal, tile_normal, tile_special, tile_special,
                                tile_normal, tile_normal, tile_normal, tile_special, tile_special,
                                tile_special, tile_special, tile_normal])

  board4.play_turn
  board4.play_turn
  board4.play_turn
  board4.play_turn
  board4.play_turn


end
