# frozen_string_literal: true

#  1. Create random array of colors in random order
#  2. Get player's guess
#  3. Check if any colors are in correct position, if so place red pegs
#  4. Check if any colors are in wrong position, but in array, if so place white pegs

class Board
  COLORS = %w[red green purple yellow brown orange].freeze
  def initialize
    @game_array = COLORS.sample(4)
  end
  attr_reader :game_array
end

class Game
  def initialize
    @game = Board.new
    play_round
  end

  def player_choice
    puts 'Choose 4 colors'
    @player_choice = gets.chomp.split(' ')
    result
    puts "\n"
  end

  def play_round
    counter = 0
    @game.game_array
    until game_won
      player_choice
      counter += 1
      break if counter == 12
    end
  end

  def result
    game_array = @game.game_array
    player_choice = @player_choice
    result_array = []
    same = player_choice.map.with_index { |x,i| x == game_array[i] }
    same_count = same.count(true)
    same_count.times {result_array.push('red')}
    right_color = game_array.intersection(player_choice).size - same_count
    right_color.times {result_array.push('white')}
    (4 - same_count - right_color).times {result_array.push(nil)}
    p result_array
  end

  def game_won
    if @player_choice == @game.game_array
      puts "You win!"
      return true
    end
  end

end


game = Game.new
