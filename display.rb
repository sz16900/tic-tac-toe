class Display
  def print_board(board)
    puts ''
    (0..2).each do |row|
      print '|'
      (0..2).each do |col|
        print board[row][col]
        print '|'
      end
      puts ''
    end
    puts ''
  end

  def winner(current_player)
    puts "Player #{current_player} Wins!!"
  end
end
