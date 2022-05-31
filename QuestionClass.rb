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
    validation = sum == user_input ? nil : @player.lives -= 1
    
  end
end