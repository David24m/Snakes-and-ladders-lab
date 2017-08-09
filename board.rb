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

    puts "Current player playing: #{@turn.name}, he is moving to tile #{current_player_position}"


    if @turn.check_win
      end_game
      return
    end

    if @tiles[current_player_position].special
      @turn.move_to(@tiles[current_player_position].end_position)
      puts "#{@turn.name} hit a #{@tiles[current_player_position].type}; going to: #{@tiles[current_player_position].end_position}"
    end
    puts
    next_turn
  end

  def end_game
    puts "The game is over! #{@turn.name} has won! Congrats!"
  end

end
