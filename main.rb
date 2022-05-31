require 'pp'
require './classes'

player1 = PlayerClass.new('Ziggy', 3)

question = QuestionClass.new(player1)

question.answer_validation

puts player1.lives
