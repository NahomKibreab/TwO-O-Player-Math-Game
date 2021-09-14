class Game
  attr_accessor :current_player
  def initialize(p1,p2)
    @number1 = 0
    @number2 = 0
    @current_player = p1
    @p1 = p1
    @p2 = p2
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

  def result(answer)
    if(answer)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
    end
    puts "P1: #{@p1.life}/3 vs P2: #{@p2.life}/3"
  end

  def game_round
    if(@p1.life == 0 || @p2.life == 0)
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else
      puts "----- NEW TURN -----"
    end
  end
end
