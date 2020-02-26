require './board'
require './display'

class Game
  def initialize
    @board = Board.new
    @display = Display.new
  end

  def start
    while @board.won?(@board.the_player) == false
      @display.print_board(@board.the_board)
      @board.user_input
    end
  end
end

# start game
game = Game.new
game.start
