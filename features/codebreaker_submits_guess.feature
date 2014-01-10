Feature: codebreaker submits guess

The codebreaker submits a guess of four colored pegs.
The game marks the guess with black and white "marker" pegs.

For each peg in the guess that matches the color and position
of a peg in the secret code, the mark includes one black peg.
For each additional peg in the guess that matches the color 
but not the position of the secret code, a white peg is added
to the mark.

Each position of the code can only be matched onece.  For example, a guess of rryc against a code of rgyc should receive a mark of bbb.  One b for the first, third, and fourth positions.  The color match in the second position should be ignored since the first position matched with the only r in the code.

Scenario Outline: submit guess  
  Given the secret code is <code>
  When I guess <guess>
  Then the mark should be <mark>

  Examples: 4 colors
    | code   | guess  | mark   |
    | "rgyc" | "rgyc" | "bbbb" |
    | "rgyc" | "rgcy" | "bbww" |
    | "rgyc" | "rcgy" | "bwww" |
    | "rgyc" | "grcy" | "wwww" |

  Examples: 3 colors
    | code   | guess  | mark   |
    | "rgyc" | "rgyb" | "bbb"  |
    | "rgyc" | "rgby" | "bbw"  |
    | "rgyc" | "rbgy" | "bww"  |
    | "rgyc" | "brgy" | "www"  |

  Examples: 2 colors
    | code   | guess  | mark   |
    | "rgyc" | "rgbb" | "bb"   |
    | "rgyc" | "rbgb" | "bw"   |
    | "rgyc" | "bbrg" | "ww"   |

  Examples: 1 color
    | code   | guess  | mark   |
    | "rgyc" | "rbbb" | "b"    |
    | "rgyc" | "brbb" | "w"    |

  Examples: no matches
    | code   | guess  | mark   |
    | "rgyc" | "bbbb" |  ""    |

  Examples: guesses with duplicates
    | code   | guess  | mark   |
    | "rggg" | "rrbb" | "b"    |
    | "rggg" | "brrb" | "w"    |
    | "rrgg" | "rrbb" | "bb"   |
    | "rrgg" | "brrb" | "bw"   |
    | "rrgg" | "bbrr" | "ww"   |
    | "rrgg" | "rrrb" | "bb"   |
    | "rrgg" | "brrr" | "bw"   |

