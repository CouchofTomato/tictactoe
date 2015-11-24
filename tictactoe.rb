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
			@board = { :one => 1,
					:two => 2,
					:three => 3,
					:four => 4,
					:five => 5,
					:six => 6,
					:seven => 7,
					:eight => 8,
					:nine => 9
					}
		end

		def display_board
			@board.each do |key, value|
				print value % 3 == 0 ? value.to_s << "\n" : value.to_s
			end
		end
	end

	class Game
	end
end

Tictactoe::Board.new.display_board