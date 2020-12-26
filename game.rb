require_relative 'board.rb'
require_relative 'players.rb'
require_relative 'helper.rb'
require 'pry'

class Game 
    attr_accessor :board, :player_1, :player_2, :active_player
    include Helper
    def initialize
        @board = Board.new
        @player_1 = Player.new('X')
        @player_2 = Player.new('O')
        @active_player = player_1
    end

    def winner?(active_player)
        counter = 0
         board.winning_combinations.each do |winning_combination|
            if contain?(active_player.player_array, winning_combination) == true
                counter += 1
            else
                nil
            end
        end
        if counter > 0
            true
        else
            false
        end
    end

    def board_full?
        board.board_array.none? {|elements| (0..9).include?(elements)}
    end     

    def game_loop(player_selection, active_player)
        # game should check if player selection is available, 
        if board.board_array.include?(player_selection)
            # if so then replace number with that player's token
            board.board_array[player_selection - 1] = active_player.token
            # then add player_selection to player_array
            active_player.player_array << player_selection
            # check if the game is over (winner or board is full)
            if winner?(active_player) == true
                puts "#{active_player} is the winner!"
            elsif board_full? == true
                puts "Tie game!"
            else
                # reset active player
                if active_player == player_1
                    active_player = player_2
                    inner_run(active_player)
                elsif active_player == player_2
                    active_player = player_1
                    inner_run(active_player)
                else
                    puts "Something went wrong"
                end
            end
        else
            puts "Error"
        end
    end

    def inner_run(active_player)
        board.display_board
        if active_player == player_1
            puts "\n" "Player 1, make your selection: "
        else
            puts "\n" "Player 2, make your selection: "
        end

        #obtain player selection
        player_selection = gets.chomp.to_i

        #start game loop
        game_loop(player_selection, active_player)
    
    end

    def run
        #set active player
        active_player == player_1
        inner_run(active_player)
    end

end
    