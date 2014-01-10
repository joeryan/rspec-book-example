Feature: codebreaker starts a game

As a codebreaker 
I want to start a game
So I can break the code

Scenario: Start game
  Given I am not yet playing
  When I start a new game
  Then I should see "Welcome to Codebreaker!"
  And I should see "Enter guess (q to quit):"

