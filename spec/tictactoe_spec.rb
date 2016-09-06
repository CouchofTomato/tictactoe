require 'tictactoe.rb'

describe Tictactoe do
  describe "Player" do
    let(:player1) {Tictactoe::Player.new("Austin", "X")}

    context "when the player is created" do
      it { expect(player1.name).to eql("Austin") }
      it { expect(player1.piece).to eql("X") }
      it { expect(player1.name).not_to eql("Dave") }
      it { expect(player1.piece).not_to eql("O") }
    end
  end

  describe "Board" do
    let(:board_class) {Tictactoe::Board.new}

    context "when the board is created" do
      it { expect(board_class.board).to be_a(Hash) }
      it { expect(board_class.board).to have_key("1") }
      it { expect(board_class.board).not_to have_key(:foo) }
      it { expect(board_class).to respond_to(:display_board) }
    end
  end
end
