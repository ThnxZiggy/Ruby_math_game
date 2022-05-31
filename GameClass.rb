class Game
  def initialize
    @player1 = PlayerClass.new('Ziggy', 3)
    @player2 = PlayerClass.new('Tommy', 3)
    @currentPlayer = @player1



    until @currentPlayer.lives <= 0 do
      
      self.swap_player


      question = QuestionClass.new(@currentPlayer)
      question.answer_validation

      puts "#{@player1.name}: #{@player1.lives}/3 Vs #{@player2.name}: #{@player2.lives}/3"
    end

    
    self.game_over


  end

  def swap_player
    if @currentPlayer == @player1 
      @currentPlayer = @player2
    else 
      @currentPlayer = @player1
    end
  end

  def game_over

    if @player1.lives < 1
      puts "game over"
      puts "#{@player2.name} is the winner!"
    else
      puts "game over"
      puts "#{@player1.name} is the winner!"
    end
  end

end