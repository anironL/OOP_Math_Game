# Player class for P1 & P2. Tracks name & lives.
class Player
  attr_accessor :name, :lives
  
  def initialize(name)
    @name = name
    @lives = 3
  end
end