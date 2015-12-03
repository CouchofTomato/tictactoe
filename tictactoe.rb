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
			puts "Player 1. Please enter your name."
			player1_name = gets.chomp
			puts "Would you like to be X or O"
			player1_piece = gets.chomp.upcase
			while !player1_piece.eql?("X") || !player1_piece.eql?("O")
				puts "Please enter X or O"
				player1_piece = gets.chomp.upcase
			end
			puts "Player 2. Please enter your name."
			player2_name = gets.chomp
			player2_piece = ""
			player1_piece == "X" ? player2_piece = "O" : player2_piece = "X"
			player1 = createPlayer(player1_name, player1_piece)
			player2 = createPlayer(player2_name, player2_piece)

			puts player1.to_s
			puts player2.to_s
		end
	end
end

Tictactoe::Game.new.get_player_information