class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    case player1[1]
      when "R"
        case player2[1]
          when "R" #tie
            return player1
          when "P" #p1 lose
            return player2
          when "S" #p1 win
            return player1
          else
            raise NoSuchStrategyError, "Strategy must be one of R,P,S"
        end
      when "P"
        case player2[1]
          when "R" #p1 win
            return player1
          when "P" #tie
            return player1
          when "S" #p1 lose
            return player2
          else
            raise NoSuchStrategyError, "Strategy must be one of R,P,S"
        end
      when "S"
        case player2[1]
          when "R" #p1 lose
            return player2
          when "P" #p1 win
            return player1
          when "S" #tie
            return player1
          else
            raise NoSuchStrategyError, "Strategy must be one of R,P,S"
        end
      else
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
  end
  
#puts winner(["Andy", "R"], ["Sean", "l"])[0]

  def self.tournament_winner(tournament)
    if tournament[0][0].is_a? String
      return winner(tournament[0], tournament[1])
    end
    return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
  end

end