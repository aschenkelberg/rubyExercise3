class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    unless ['R', 'P', 'S'].include? player2[1] 
      raise NoSuchStrategyError,  "Strategy must be one of R,P,S"
    end
    
    case player1[1]
    when 'R'
      ((player2[1] == 'R') || (player2[1] == 'S')) ? player1 : player2
    when 'P'
      ((player2[1] == 'P') || (player2[1] == 'R')) ? player1 : player2
    when 'S'
      ((player2[1] == 'S') || (player2[1] == 'P')) ? player1 : player2
    else
      raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
  end

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a? String
      winner(tournament[0], tournament[1])
    else
      tournament_winner(
        [tournament_winner(tournament[0]), tournament_winner(tournament[1])]
        )
    end
  end
end

