module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret)
      @secret = secret
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      #TODO calculate mark and display
      mark = ''      
      for i in 0..3
        if exact_match?(guess, i)
          mark += 'b'
        elsif color_match?(guess, i)
          mark += 'w'
        end
      end
      @output.puts mark
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def color_match?(guess, index)
      @secret.include?(guess[index])
    end
  end
end
