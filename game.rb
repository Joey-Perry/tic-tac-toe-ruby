class Game 
    attr_accessor :board, :player_1, :player_2
    def initialize
        @board = Board.new
        @player_1 = Player.new
        @player_2 = Player.new
    end

    # game should check if that selection is available, if so then continue
# player_selection should get added to player_array
# player_selection should trigger the board to replace that number with the token for that player
# game should check if the board is full or one of the players has won; if not then repeat

end
    