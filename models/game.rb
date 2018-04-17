class Game
  
  def self.decide_match(player1, player2)
    if player1 == "rock" && player2 == "scissors" || player2 == "rock" && player1 == "scissors"
      return "Rock wins"
    elsif player1 == "paper" && player2 == "rock" || player2 == "paper" && player1 == "rock"
      return "Paper wins"
    elsif player1 == "scissors" && player2 == "paper" || player2 == "scissors" && player1 == "paper"
      return "Scissors wins"
    elsif player1 == player2
      return "Draw!"
    end
  end

end
