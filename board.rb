class Board
  attr_reader :the_board, :the_player
  def initialize
    @the_board = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @the_player = 'X'
  end

  def change_player
    @the_player = @the_player == 'O' ? 'X' : 'O'
  end

  # Put this in new class?
  def user_input
    print 'Choose your position (1 -> 9): '
    x = gets.chomp
    if ('1'..'9').cover? x
      x = x.to_i
      row = (x - 1) / 3
      col = (x - 1) % 3
      # Checks if position is already taken
      if @the_board[row][col].is_a? Integer
        @the_board[row][col] = @the_player
        change_player
      else
        puts 'This position is already taken.'
      end
    else
      puts 'Wrong choice of digits.'
      raise 'An error'
    end
  rescue StandardError
    puts 'Try again.'
    retry
  end

  def won?(player)
    # Check across
    if (@the_board[0][0] == @the_board[1][1] && @the_board[0][0] == @the_board[2][2] && @the_board[0][0] == player) ||
       (@the_board[0][2] == @the_board[1][1] && @the_board[0][2] == @the_board[2][0] && @the_board[0][2] == player)
      return true
    end

    (0..2).each do |i|
      if (@the_board[i][0] == @the_board[i][1] && @the_board[i][0] == @the_board[i][2] && @the_board[i][0] == player) ||
         (@the_board[0][i] == @the_board[1][i] && @the_board[0][i] == @the_board[2][i] && @the_board[0][i] == player)
        return true
      end
    end
    false
  end
end

# b = Board.new
# b.print_board
# b.user_input
# b.print_board
# b.change_player
# b.user_input
# b.print_board
