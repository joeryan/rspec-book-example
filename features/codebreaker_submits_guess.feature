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
    | code | guess| mark |
    | "rgyc" | "rgyc" | "bbbb" |
    | "rgyc" | "rgcy" | "bbww" |
    | "rgyc" | "rcgy" | "bwww" |
    | "rgyc" | "grcy" | "wwww" |
    | "rgyc" | "rgyb" | "bbb"  |
    | "rgyc" | "rgby" | "bbw"  |
    | "rgyc" | "rbgy" | "bww"  |
    | "rgyc" | "brgy" | "www"  |
    | "rgyc" | "rgbb" | "bb"   |
    | "rgyc" | "rbgb" | "bw"   |
    | "rgyc" | "bbrg" | "ww"   |
    | "rgyc" | "rbbb" | "b"    |
    | "rgyc" | "brbb" | "w"    |
    | "rgyc" | "bbbb" |  ""    |

