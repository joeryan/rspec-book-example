Feature:  codebreaker reveals secret

As a codebreaker
When I exit the game
I want to know the secret code

Scenario: Quit the game without guessing correctly
  Given I am playing a game with the secret 'rgyc'
  When I quit the game
  Then the game exits and I should see "The secret code was: rgyc"
  
