class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError
  end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    a = (player1.length != 2 || player2.length != 2)
    a = (a || /^[RPS]$/ !~ player1[1] || /^[RPS]$/ !~ player2[1])
    if a
      raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
    if player1[1] == 'R'
      return player1 if player2[1] == 'R'
      return player2 if player2[1] == 'P'
      return player1 if player2[1] == 'S'
    elsif player1[1] == 'P'
      return player1 if player2[1] == 'P'
      return player1 if player2[1] == 'R'
      return player2 if player2[1] == 'S'
    elsif player1[1] == 'S'
      return player1 if player2[1] == 'S'
      return player2 if player2[1] == 'R'
      return player1 if player2[1] == 'P'
    end
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    begin
      win = self.winner(tournament[0], tournament[1])
      return win
    rescue
    end
    win0 = self.tournament_winner(tournament[0])
    win1 = self.tournament_winner(tournament[1])
    self.winner(win0, win1)
  end

end
