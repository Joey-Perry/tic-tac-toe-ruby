require_relative 'board.rb'
require_relative 'players.rb'

puts "Welcome to Tic Tac Toe on Command Line with Ruby!"
puts "Version 1.0"
new_game = Board.new
new_game.display_board

puts "Player 1, make your selection!"
player_selection = gets.chomp

# game should check if that selection is available, if so then continue
# player_selection should get added to player_array
# player_selection should trigger the board to replace that number with the token for that player
# game should check if the board is full or one of the players has won; if not then continue

puts "Player 2, make your selection!"
player_selection = gets.chomp

# game should check if that selection is available, if so then continue
# player_selection should get added to player_array
# player_selection should trigger the board to replace that number with the token for that player
# game should check if the board is full or one of the players has won; if not then repeat



