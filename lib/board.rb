class Board
  COLORS = %w[red green purple yellow brown orange].freeze
  def initialize
    @game_array = COLORS.sample(4)
  end
  attr_reader :game_array
end
