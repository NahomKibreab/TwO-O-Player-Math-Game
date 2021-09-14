class Game
  def initialize
    @number1 = 0
    @number2 = 0
  end

  def random_question
    @number1 = self.random_number
    @number2 = self.random_number
    "What does #{@number1} plus #{@number2} equal?"
  end

  def random_number
    rand(1..20)
  end

  def check_answer?(answer)
    response(answer == (@number1 + @number2))
  end

  def response(answer)
    if(answer)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
    end
  end

  def result(p1,p2)
    puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
  end

  def game_round(p1,p2)
    if(p1.life == 0 || p2.life == 0)
      puts "----- GAME OVER -----"
    else
      puts "----- NEW TURN -----"
    end
  end
end
