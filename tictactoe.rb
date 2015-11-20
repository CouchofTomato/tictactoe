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
		# Should be able to read and write to the array
		attr_accessor :board
		def initialize
			@board = {:1 => nil,
					:2 => nil,
					:3 => nil,
					:4 => nil,
					:5 => nil,
					:6 => nil,
					:7 => nil,
					:8 => nil,
					:9 => nil
					}
		end
	end

	class Game
	end
end

