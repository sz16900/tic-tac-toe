class Board
    attr_reader :the_board
    def initialize
        @the_board = [[0,0,0],[0,0,0],[0,0,0]]
    end
    def resetBoard
        @the_board = [[0,0,0],[0,0,0],[0,0,0]]
        @the_board.each {|x| p x}
    end
    def won?(player)
        # Check across
        if((@the_board[0][0] == @the_board[1][1] && @the_board[0][0] == @the_board[2][2] && @the_board[0][0] == player) ||
            (@the_board[0][2] == @the_board[1][1] && @the_board[0][2] == @the_board[2][0] && @the_board[0][2] == player))
            return true;
        end
        (0..2).each do |i|
            if((@the_board[i][0] == @the_board[i][1] && @the_board[i][0] == @the_board[i][2] && @the_board[i][0] == player) ||
                (@the_board[0][i] == @the_board[1][i] && @the_board[0][i] == @the_board[2][i] && @the_board[0][i] == player))
                return true
            end
        end
        false
    end
end

B = Board.new()
B.resetBoard
p B.won?(1)
p B.the_board