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
      @output.puts 'b'*exact_match_count(guess) + 'w'*color_match_count(guess)
    end

    def exact_match_count(guess)
      (0..3).inject(0) do |count, index|
        count += (exact_match?(guess, index) ? 1 : 0)
      end
    end

    def color_match_count(guess)
      (0..3).inject(0) do |count, index|
        count += (color_match?(guess, index) && !exact_match?(guess, index) ? 1 : 0)
      end
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def color_match?(guess, index)
      @secret.include?(guess[index])
    end
  end
end
