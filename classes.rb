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
      player1
      player2
      question
      swap_player
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