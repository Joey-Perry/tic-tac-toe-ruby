class Player
    attr_accessor :player_array
    attr_reader :token
    def initialize(token)
        @token = token
        @player_array = []
    end

end