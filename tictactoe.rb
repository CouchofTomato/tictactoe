module Tictactoe

	class Player
		# A player should have a name and a piece (X or O)
		# They should be instance variables
		def initialize name, piece
			@name = name
			@piece = piece
		end
	end

	class Board
		# Use a hash to hold the board position pieces
		# Should be able to read and write to the hash
		attr_accessor :board
		def initialize
			@board = { 
					"1" => 1,
					"2" => 2,
					"3" => 3,
					"4" => 4,
					"5" => 5,
					"6" => 6,
					"7" => 7,
					"8" => 8,
					"9" => 9
					}
		end

		def display_board
			@board.each do |key, value|
				print key.to_i % 3 == 0 ? value.to_s << "\n" : value.to_s << " "
			end
		end
	end

	class Game
		def initialize
		end

		def get_player_information
			puts "Player 1. Please enter your name?"
			player1_name = gets.chomp
			puts "Would you like to be X or O"
			player1_piece = gets.upcase.chomp

		end
	end
end

Tictactoe::Board.new.display_board