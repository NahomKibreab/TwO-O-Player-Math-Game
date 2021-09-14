class Game
  attr_reader :current_player

  def initialize(p1,p2)
    @number1 = 0
    @number2 = 0
    @p1 = p1
    @p2 = p2
    @current_player = nil
  end

  def random_question
    @number1 = random_number
    @number2 = random_number
    "What does #{@number1} plus #{@number2} equal?"
  end

  def current_player
    if(@current_player == nil)
      @current_player = @p1
    else
      @current_player = @current_player == @p1 ? @p2 : @p1
    end
  end

  def check_answer?(answer)
    result(answer.to_i == (@number1 + @number2))
  end
  
  private

  def result(answer)
    if(answer)
      puts "YES! You are correct."
    else
      puts "Seriously? No!"
      @current_player.lost_life
    end
    puts "P1: #{@p1.life}/3 vs P2: #{@p2.life}/3"
    game_round
  end

  def winner
    @p1.life != 0 ? @p1 : @p2
  end
  
  def game_round
    if(@p1.life == 0 || @p2.life == 0)
      puts "#{winner.name} wins with a score of #{winner.life}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      exit(1)
    else
      puts "----- NEW TURN -----"
    end
  end
  
  def random_number
    rand(1..20)
  end
end
