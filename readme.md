# Description
    Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

# Details
    Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

    The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.

# Example output
    Player 1: What does 5 plus 3 equal?
    > 9
    Player 1: Wrong
    P1: 2/3 Vs P2: 3/3
    -----NEW TURN -----
    Player 2: what does 9 plus 10 equal?
    > 19
    Player 2: correct
    P1: 2/3 Vs P2: 3/3
    -----NEW TURN -----
    ...
    Player 1 wins with a score of 1/3
    ----GAME OVER----


# Task - extract Nouns for classes & Write roles

Game class 

  player class => @name(public, read), @lives(private, write by answer validation)

  question class => @num1, @num2(calls 2 random whole numbers with a string between 1 and 20)
      answer validation (public) => sum method

  reducing live game.method => if userAnswer.to_int != sum then player[:lives] - 1
  
  swapPlayer => method to switch player


  userinput gets.chomp
  
  
  while loop (player 1 || 2 [:lives] > 0) to keep repeating
  <!-- rewrite ^ as a ruby loop (when player lives = 0 maybe?)-->
  <!-- use break -->
  

  # Task 2 - sample
    Game(class) initialize
        player(class) 1
        player 2
      
     begin loop (count lives)
      methods
        question (class)
        answer
        answer validation (keep or lose life)
        swap player
     end loop (if lives < 1, swapped player has won)
      else loop back to beginning and continue



  

  