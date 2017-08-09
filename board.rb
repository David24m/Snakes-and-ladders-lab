class Board

  attr_accessor(:players, :tiles, :turn)

  def initialize(players, tiles)
    @players = players
    @tiles = tiles
    @turn = players[0]
  end

end
