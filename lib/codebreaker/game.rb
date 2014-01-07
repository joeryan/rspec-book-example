module Codebreaker
  class Game
    def initialize(output)
      @output = output
    end

    def start(secret = nil)
      @output.puts 'Welcome to Codebreaker!'
      @output.puts 'Enter guess:'
    end

    def guess(guess)
      #TODO calculate mark and display
      @output.puts ''
    end
  end
end
