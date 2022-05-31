require 'pp'
require './GameClass'
require './PlayerClass'
require './QuestionClass'


newgame = Game.new

# player1 = PlayerClass.new('Ziggy', 3)
# player2 = PlayerClass.new('Tommy', 3)
# currentPlayer = player1


# until currentPlayer.lives <= 0 do

#   if currentPlayer == player1 
#     currentPlayer = player2
#   else 
#     currentPlayer = player1
#   end


#   question = QuestionClass.new(currentPlayer)
#   question.answer_validation

#   puts "#{player1.name} has #{player1.lives} left. #{player2.name} has #{player2.lives} left."
# end

# puts "game over"



# if player1.lives < 1
#   puts "#{player2.name} is the winner!"
# else
#   puts "#{player1.name} is the winner!"
# end