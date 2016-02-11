module Tictactoe

	class Player
		attr_reader :name, :piece
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
		@@number_of_turns = 0
		def initialize
			@game_board = Tictactoe::Board.new
			get_player_information
			start_game
		end

		def get_player_information
			puts "Player 1. Please enter your name."
			player1_name = gets.chomp.capitalize
			puts "Would you like to be X or O"
			player1_piece = gets.chomp.upcase
			while !player1_piece.eql?("X") && !player1_piece.eql?("O")
				puts "Please enter X or O"
				player1_piece = gets.chomp.upcase
			end
			puts "Player 2. Please enter your name."
			player2_name = gets.chomp.capitalize
			player2_piece = ""
			player1_piece == "X" ? player2_piece = "O" : player2_piece = "X"
			@@player1 = createPlayer(player1_name, player1_piece)
			@@player2 = createPlayer(player2_name, player2_piece)
		end

		def createPlayer(name, piece)
			Player.new(name, piece)
		end

		def start_game
			game_running = true
			while game_running
				@game_board.display_board
				if @@number_of_turns.even?
					puts "#{@@player1.name}, Please select a square: "
					player1_value = gets.chomp.to_i
					while !check_move_is_legal?(player1_value)
						puts "Sorry, not a legal move. #{@@player1.name}, Please select a square: "
						player1_value = gets.chomp.to_i
					end
					@game_board.board[player1_value.to_s] = @@player1.piece
				else
					puts "#{@@player2.name}, Please select a square: "
					player2_value = gets.chomp.to_i
					while !check_move_is_legal?(player2_value)
						puts "Sorry, not a legal move. #{@@player2.name}, Please select a square: "
						player2_value = gets.chomp.to_i
					end
					@game_board.board[player2_value.to_s] = @@player2.piece
				end
				@game_board.board.each {|key, value| puts key + " - " + value.to_s}
				@@number_of_turns += 1
			end
		end

		def check_move_is_legal?(value)
			if !value.is_a? Integer
				return false
			end
			if value < 1 || value > 9
				return false
			end
			if !@game_board.board[value.to_s].is_a? Integer
				return false
			end
			return true
		end
	end
end

Tictactoe::Game.new