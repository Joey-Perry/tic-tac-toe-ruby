class Board

    attr_accessor :board_array, :winning_combinations

    def initialize
        @board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @winning_combinations = [[1,2,3], [4,5,6], [7,8,9], [1,5,9], [3,5,7], [1,4,7], [2,5,8], [3,6,9]]
    end

    def display_board
        puts "#{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
        puts "--|---|--"
        puts "#{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
        puts "--|---|--"
        puts "#{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
    end
end