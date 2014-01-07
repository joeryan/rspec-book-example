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
<<<<<<< .merge_file_HScsOx
<<<<<<< .merge_file_sUgltt
<<<<<<< .merge_file_lILjhR
<<<<<<< .merge_file_N6yOqw
      mark = ''      
      (0..3).each do |index|
        if exact_match?(guess, index)
          mark << 'b'
        elsif color_match?(guess, index)
          mark << 'w'
        end
      end
      @output.puts mark.chars.sort.join
=======
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
>>>>>>> .merge_file_FJgJqx
=======
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
>>>>>>> .merge_file_TCnYpN
=======
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
>>>>>>> .merge_file_SEjS7s
=======
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
>>>>>>> .merge_file_HTWwsx
    end

    def exact_match?(guess, index)
      guess[index] == @secret[index]
    end

    def color_match?(guess, index)
      @secret.include?(guess[index])
    end
  end
end
