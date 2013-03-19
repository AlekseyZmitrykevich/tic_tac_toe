require './lib/board.rb'
require './lib/gaming.rb'
require './lib/player.rb'

puts "Hello, this is the game Tic-Tac-Toe!"
puts " _ _ _ _ _ _\n|_1_|_2_|_3_|\n|_4_|_5_|_6_|\n|_7_|_8_|_9_|\n\n"

puts "Lets play, GO-GO-GO!!!\n\n"

players=[Player.new("Player 1", 'X'), Player.new("Player 2",'O')]
board=Board.new
game=Game.new(board, players)

until game.over?
  players.each do |player|
    unless game.over?
      puts "#{player.name}, your move, select the number of"
      puts board.show
      board.put(player,(gets.chomp).to_i)
    end
  end
end
puts "#{board.show}"
puts "Game over. #{game.winner} win, congratulations"