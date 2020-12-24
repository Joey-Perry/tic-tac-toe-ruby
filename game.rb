require_relative 'board.rb'
require_relative 'players.rb'
require 'pry'

class Game 
    attr_accessor :board, :player_1, :player_2
    def initialize
        @board = Board.new
        @player_1 = Player.new('X', true)
        @player_2 = Player.new('O', false)
    end

    def set_active_player
        if player_1.active_player = true
            player_1.active_player = false
            player_2.active_player = true
            player_1
        else
            player_2.active_player = false
            player_1.active_player = true
            player_2
        end
    end

    def winner?(active_player)
        board.winning_combinations.each do |winning_combination|
            if active_player.player_array.sort == winning_combination
                break true
            else
                false
            end
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
            #display board after selection
            # board.display_board
            # check if the game is over (winner or board is full)
            if winner?(active_player) == true
                puts "#{active_player} is the winner!"
            elsif board_full? == true
                puts "Tie game!"
            else
                run()
            end
        else
            puts "Error"
        end
    end

    def run
        #set active player
        active_player = self.set_active_player
        
        board.display_board

        #obtain player selection
        if active_player == player_1
            puts "\n" "Player 1, make your selection: "
        else
            puts "\n" "Player 2, make your selection: "
        end

        player_selection = gets.chomp.to_i

        game_loop(player_selection, active_player)
    
    end
end
    