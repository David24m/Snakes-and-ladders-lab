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

end
