require 'pry'
class TicTacToe
    attr_accessor :board
    def initialize(board =  [" ", " ", " ", " ", " ", " ", " ", " ", " "])
          @board = board
    end

     WIN_COMBINATIONS = [
        [0,1,2],
        [3,4,5],
        [6,7,8],
        [0,3,6],
        [1,4,7],
        [2,5,8],
        [0,4,8],
        [2,4,6],
     ]
    # ~~~~~~~~~~~~~~~~~~~HELPER METHODS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
      
    end
    def input_to_index(user_input)
        user_input.to_i - 1
    end    

    def move(index, value)
        @board[index] = value
    end
    
    def position_taken?(index)
        @board[index] == " " ? false : true
end
    def valid_move?(index)
        index.between?(0,8) && !position_taken?(index)
    end
    def turn_count
        @board.count{|position| position!= " "}
    end
    
    def current_player
        if turn_count().even? == true
            "X"
        else
            "O"
        end
    
    end
end
game = TicTacToe.new
binding.pry