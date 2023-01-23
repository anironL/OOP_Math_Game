require_relative "players"
require_relative "questions"

class Game 
  def initialize()
    @p1 = Player.new("Player 1")
    @p2 = Player.new("Player 2")
    @current_player = @p1
    @miscvar = 2
  end

  # Switch current player
  def switch_player()
    if @current_player.name == "Player 1"
      @current_player = @p2
    else
      @current_player = @p1
    end
  end

  # Check if the received answer matches the sum_total from the class
  def is_answer(player_num, question, answer)
    if answer.to_i == question.sum_total
      puts "Yes!"
    else 
      puts "No!"
      player_num.lives -= 1
    end
  end

  # GAME CODE HERE
  def start_game
    puts "Welcome!"

    while @p1.lives > 0 and @p2.lives > 0
      puts " --- NEW TURN --- "
  
      current_q = Question.new()  
      puts "#{@current_player.name}: What is #{current_q.sum1} + #{current_q.sum2}?"
      sum_answer = gets.chomp
      is_answer(@current_player, current_q, sum_answer)
  
      if @p1.lives == 0
        puts "p2 Win! Lives remaining: #{@p2.lives}/3"
      elsif @p2.lives == 0
        puts "p1 Win! Lives remaining: #{@p1.lives}/3"
      else
        puts "p1: #{@p1.lives}/3 vs p2: #{@p2.lives}/3"
      end
  
      switch_player()
    end
  
    puts "--- Game Over ---"
    puts "Goodbye!"
  end  
end