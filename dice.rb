class Dice

  attr_accessor(:number)

  def initialize(number)
    @number = number
  end

  def roll
    @number = [1, 2, 3, 4, 5, 6].sample
  end

  # dice = Dice.new(2)
  #
  # dice.roll
  #
  # puts dice.number

end
