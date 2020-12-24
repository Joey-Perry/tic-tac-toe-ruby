class Player
    attr_accessor :player_array, :active_player
    attr_reader :token
    def initialize(token, active_player)
        @token = token
        @player_array = []
        @active_player
    end

end