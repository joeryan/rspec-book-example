require 'codebreaker/marker'
module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess (q to quit):'
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
  end
end
