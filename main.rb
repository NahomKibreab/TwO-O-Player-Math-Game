require './player'
require './game'

class MathGame
  attr_accessor :game
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @game = Game.new(@player1, @player2)
  end
end

start_game = MathGame.new
