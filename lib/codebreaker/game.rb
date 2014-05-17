require 'codebreaker/marker'
module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess (q to quit or ? for instructions):'
    end

    def guess(guess)
      marker = Marker.new(@secret, guess)
      self.correct if marker.exact_match_count == 4
      @output.puts 'b'*marker.exact_match_count + 
                      'w'*marker.color_match_count
    end

    def quit
      @output.puts "The secret code was: " + @secret
      exit
    end

    def correct
      puts "Congratulations, you guessed correctly!"
      exit
    end

    def instructions
      puts "Type a guess of four colors with no spaces and press Enter."
      puts "Valid colors are: r - Red, b - Blue, y - Yellow, g - Green, o - Orange"
      puts "The guess will be evaluated and an indicator provided.  The"
      puts "indicator will have b for correct colors in the correct spot,"
      puts "and w - for colors that are correct but in the wrong position."
      puts "If no colors are correct, a blank line will be output."
      puts "Enter a guess (q for quit):"
    end 
  end
end
