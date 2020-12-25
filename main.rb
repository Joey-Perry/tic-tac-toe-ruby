require_relative 'board.rb'
require_relative 'players.rb'
require_relative 'game.rb'

puts "Welcome to Tic Tac Toe on Command Line with Ruby!"
puts "Version 2.0"

new_game = Game.new
new_game.run

