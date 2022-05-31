# def question
  #   num1 = rand(1..20)
  #   num2 = rand(1..20)
  #   puts "What is #{num1} + #{num2}?"
  # end
  
  # puts question
  
  # def answer_validation
  #   user_input = gets.chomp.to_i
  #   sum = num1 + num2
  #   validation = sum == user_input ? @player[:lives] : @player[:lives] - 1
  # end
  
  class Game
    def initialize
      @player1 = PlayerClass.new('Ziggy', 3)
      @player2 = PlayerClass.new('Tommy', 3)
      @currentPlayer = player1



      until currentPlayer.lives <= 0 do
        
        self.swap_player


        question = QuestionClass.new(currentPlayer)
        question.answer_validation

        puts "#{player1.name} has #{player1.lives} left. #{player2.name} has #{player2.lives} left."
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

      if player1.lives < 1
        puts "game over"
        puts "#{player2.name} is the winner!"
      else
        puts "game over"
        puts "#{player1.name} is the winner!"
      end
    end

  end
  
  class PlayerClass
    attr_accessor :lives
    attr_reader :name
    def initialize(name, lives)
      @name = name
      @lives = 3
    end
  end
  
  class QuestionClass
    attr_accessor :user_input
    def initialize(player)
      @num1 = rand(1..20)
      @num2 = rand(1..20)
      puts "What is #{@num1} + #{@num2}?"
      @user_input = gets.chomp.to_i
      @player = player
    end
  
    def answer_validation
      sum = @num1 + @num2
      puts "You entered #{user_input} and the correct answer is #{sum}"
      validation = sum == user_input ? "that's right ! #{@player.lives}" : "that's wrong!  #{@player.lives -= 1}"
      puts validation
    end
  end