class Board

    attr_reader :board_array

    def initialize
        @board_array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    end

    def display_board
        puts "#{board_array[0]} | #{board_array[1]} | #{board_array[2]} "
        puts "--|---|--"
        puts "#{board_array[3]} | #{board_array[4]} | #{board_array[5]} "
        puts "--|---|--"
        puts "#{board_array[6]} | #{board_array[7]} | #{board_array[8]} "
    end
end