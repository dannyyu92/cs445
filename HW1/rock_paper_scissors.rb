#Danny Yu, dyu6@binghamton.edu

class RockPaperScissors
  POSSIBLE_STRATS = ["R","P","S"]
  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    if (!POSSIBLE_STRATS.include?(player1.last.upcase) ||
        !POSSIBLE_STRATS.include?(player2.last.upcase))
      raise NoSuchStrategyError.new("Strategy must be one of R,P,S")
    end

    if player1.last == player2.last
      return player1
    elsif player1.last == "R"
      return (player2.last == "S")? player1:player2
    elseif player1.last == "P"
      return (player2.last == "R")? player1:player2
    else #if player1 uses "S"
      return (player2.last == "P")? player1:player2
    end
  end

  def self.tournament_winner(tournament)
    if tournament.flatten.size == 4 #base case (only two people left)
      return self.winner(tournament[0],tournament[1])
    else
      return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    end
  end

end