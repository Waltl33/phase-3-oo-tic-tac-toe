require 'pry'
class TicTacToe
    attr_accessor :board
    def initialize  
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
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

    def move(index, token)
        @board[index] = token
    end
    
    def position_taken?(index)
        @board[index] == " " ? false : true
        # @board[index] != ""
    end

    def valid_move?(index)
        index.between?(0,8) && !position_taken?(index)
        
    end

    def turn_count
        @board.count{|position| position!= " "}
        # @board.count("X") + @board.count("0")
    end
    
    def current_player
        turn_count.even? ? "X": "O"       
    end

    def turn
        #ask for input
        puts "enter 1-9"
        #get input
        #gets.strip
        #get.chomp
        # input = gets.chomp
        #translate input into index
        index = input_to_index(gets)
        #if index is valid
        if valid_move?(index)
            #make the move for index
            move(index, current_player)
            #show the board
            display_board
            #else
        #recursvie case: index not valide, redo turn
        else
            #turn
        turn
    
        
        end

    end
end
game = TicTacToe.new
binding.pry