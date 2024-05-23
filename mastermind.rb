#  1. Create random array of colors in random order
#  2. Get player's guess
#  3. Check if any colors are in correct position, if so place red pegs
#  4. Check if any colors are in wrong position, but in array, if so place white pegs

class Board
  COLORS = %w[red, green, purple, yellow, brown, orange]
  @game_array = []
  def initialize
    @game_array = COLORS.sample(4)
    p @game_array
  end
end

game = Board.new
