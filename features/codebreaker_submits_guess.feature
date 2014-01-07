Feature: codebreaker submits guess

The codebreaker submits a guess of four colored pegs.
The game marks the guess with black and white "marker" pegs.

For each peg in the guess that matches the color and position
of a peg in the secret code, the mark includes one black peg.
For each additional peg in the guess that matches the color 
but not the position of the secret code, a white peg is added
to the mark.

Scenario Outline: submit guess  
  Given the secret code is <code>
  When I guess <guess>
  Then the mark should be <mark>

  Examples:
    | code      | guess   | mark |
    | r g y c   | r g y c | bbbb |
    | r g y c   | r g c y | bbww |
    | r g y c   | r c g y | bwww |
    | r g y c   | g r c y | wwww |
    | r g y c   | r g y b | bbb  |
    | r g y c   | r g b y | bbw  |
    | r g y c   | r b g y | bww  |
    | r g y c   | b r g y | www  |
    | r g y c   | r g b b | bb   |
    | r g y c   | r b g b | bw   |
    | r g y c   | b b r g | ww   |
    | r g y c   | r b b b | b    |
    | r g y c   | b r b b | w    |
    | r g y c   | b b b b |      |

