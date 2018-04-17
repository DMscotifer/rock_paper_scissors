require("minitest/autorun")
require("minitest/rg")

require_relative("../game.rb")

class GameTest < MiniTest::Test

  def setup()
    @game1 = Game.new("scissors", "rock")
    @game2 = Game.new("rock", "scissors")
    @game3 = Game.new("rock", "rock")
    @game4 = Game.new("rock", "paper")
  end

  def test_game()
    assert_equal("scissors", @game1.player1)
  end

  def test_game()
    assert_equal("rock", @game1.player2)
  end

  def test_game___rock_wins()
    assert_equal("Rock wins", @game2.decide_match)
  end

  def test_game___draw()
    assert_equal("Draw!", @game3.decide_match)
  end

  def test_game___loser()
    assert_equal("You lost!", @game4.decide_match)
  end
  
end
