
class RockPaperScissors

  def RockPaperScissors.run(player1, player2)

    case player1
      when 'rock'
        if player2 == "paper"
          return "Paper covers rock. Player 2 wins"
        elsif player2 == "scissors"
          return "Rock breaks scissors. Player 1 wins"
        elsif player2 == "rock"
          return "rock and rock. Draw"
        else
          return "Player 2 invalid selection"
        end #if end

      when 'scissors'
        if player2 == "paper"
          return "Scissors cut paper. Player 1 wins"
        elsif player2 == "scissors"
          return "Scissors and scissors. Draw"
        elsif player2 == "rock"
          return "rock breaks scissors. Player 2 wins"
        else
          return "Player 2 invalid selection"
        end #if end

      when 'paper'
        if player2 == "paper"
          return "paper and paper. Draw"
        elsif player2 == "scissors"
          return "Scissors cut paper. Player 2 wins"
        elsif player2 == "rock"
          return "Paper covers Rock. Player 1 Wins"
        else
          return "Player 2 invalid selection"
        end #if end

    else
      return "Player 1 Invalid selection"
    end #case end

  end #function end

end #class end

result = RockPaperScissors.run('rock', 'scissors')

p result
