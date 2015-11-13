require 'player'

class Tictactoe

	attr_accessor :board

	@@winning_combinations = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

	@board = [1,2,3,4,5,6,7,8,9]

	def initialize
	end

	private

	def start_game
	end

	def display_board
	end

	def decide_who_goes_first
	end

	def is_move_legal?
	end

	def check_for_winner
	end

end