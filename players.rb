require_relative("dice.rb")

class Player

  attr_accessor(:name, :position, :end_position)

  def initialize(name, position, end_position)
    @name = name
    @position = position
    @dice = Dice.new(0)
    @end_position = end_position
  end

  def move_to(position)
    @position = position
  end

  def roll_dice()
    @dice.roll
    return @dice.number
  end

  def play_turn()
    movement = roll_dice + @position
    move_to(movement)
    check_win

  end

  # def play_turn()
  #   movement = roll_dice + @position
  #   puts "Moving to #{movement}"
  #   move_to(movement)
  #   if board.tiles[self.position].is_special
  #     puts "I'm special"
  #   end
  # end

  def check_win()
    if @position >= @end_position
      "Yay! I won"
      return true
    end
    return false
  end

  # player = Player.new("Raul", 0)
  # player.play_turn
  # puts player.position

end
