require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

def setup
  @game1 = Game.new("rock", "scissors")
  @game2 = Game.new("rock", "paper")
  @game3 = Game.new("paper", "scissors")
  @game4 = Game.new("paper", "rock")
  @game5 = Game.new("scissors", "rock")
  @game6 = Game.new("scissors", "paper")
  @game7 = Game.new("scissors", "scissors")
  @game8 = Game.new("paper", "paper")
  @game9 = Game.new("rock", "rock")
end

def test_rock_scissors
  @game1 = Game.new("rock", "scissors")
  assert_equal("Rock wins!", @game1.winner)
end

def test_rock_paper
  @game2 = Game.new("rock", "paper")
  assert_equal("Paper wins!", @game2.winner)
end
def test_paper_scissors
  @game3 = Game.new("paper", "scissors")
  assert_equal("Scissors win!", @game3.winner)
end

def test_paper_rock
  @game4 = Game.new("paper", "rock")
  assert_equal("Paper wins!", @game4.winner)
end
def test_scissors_rock
  @game5 = Game.new("scissors", "rock")
  assert_equal("Rock wins!", @game5.winner)
end

def test_scissors_paper
  @game6 = Game.new("scissors", "paper")
  assert_equal("Scissors win!", @game6.winner)
end

def test_scissor_draw
  @game7 = Game.new("scissors", "scissors")
  assert_equal("DRAW!!", @game7.winner)
end

def test_paper_draw
  @game8 = Game.new("paper", "paper")
  assert_equal("DRAW!!", @game8.winner)
end

def test_rock_draw
  @game9 = Game.new("rock", "rock")
  assert_equal("DRAW!!", @game9.winner)
end

#this is the end
end
