# Player's class contain player's name and life instances
# lost_life instance method will reduce the life by one 
class Player
  attr_reader :name, :life
  def initialize(name)
    @name = name
    @life = 3
  end

  def lost_life
    @life -= 1
  end
end