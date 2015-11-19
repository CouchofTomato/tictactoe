module Tictactoe
	class Board
	end

	class Player
		def initialize name
			@name = name
		end
	end

	class Game
		def initialize
			get_player_names
		end

		def get_player_names
			puts "Enter player1 name"
			player1_name = gets.chomp
			player1 = Player.new(player1_name)
			
			puts "Enter player12 name"
			player2_name = gets.chomp
			player2 = Player.new(player2_name)
		end
	end
end

Tictactoe::Game.new