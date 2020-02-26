require './board'
require './display'

class Game
  def initialize
    @board = Board.new
    @display = Display.new
  end

  def start
    loop do
      @display.print_board(@board.the_board)
      @board.place_move
      current_player = @board.the_player
      @board.change_player
      next unless @board.won?(current_player)

      @display.print_board(@board.the_board)
      @display.winner(current_player)
      break
    end
  end
end

# start game
game = Game.new
game.start
