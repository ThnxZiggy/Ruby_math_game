require 'pp'
require './classes'

def question
  num1 = rand(1..20)
  num2 = rand(1..20)
  puts "What is #{num1} + #{num2}?"
end

puts question

def answer_validation
  user_input = gets.chomp.to_i
  sum = num1 + num2
  validation = sum == user_input ? player[:lives] : player[:lives] - 1
end

class Game
  def initialize
    player1
    player2
    question
    swap_player
  end
end

class PlayerClass
  attr_accessor :name
  attr_writer :lives
  def initialize(name, lives)
    @name = name
    @lives = 3
  end
end

class QuestionClass
  
  def initialize(num1, num2)
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    puts "What is #{num1} + #{num2}?"
  end

  def answer_validation
    user_input = gets.chomp.to_i
    sum = num1 + num2
    validation = sum == user_input ? player[:lives] : player[:lives] - 1
  end