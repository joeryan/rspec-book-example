Feature: codebreaker guesses code

As a codebreaker 
when I guess the correct code
I want the game to end

Scenario: Guessed code correctly
  Given I am playing a game
  When I guess the code correctly
  Then the game should end and I should see "Congratulations, you guessed correctly!"
