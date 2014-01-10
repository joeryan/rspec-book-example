module Codebreaker
  class Marker
    def initialize(secret, guess)
      @secret, @guess = secret, guess
    end
  
    def total_match_count
      secret = @secret.split('')
      @guess.split('').inject(0) do |count, n|
        count += (delete_first?(secret, n) ? 1 : 0 )          
      end
    end

    def delete_first?(code, n)
      code.delete_at(code.index(n)) if code.include?(n)
    end

    def exact_match_count
      (0..3).inject(0) do |count, index|
        count += (exact_match?(index) ? 1 : 0)
      end
    end

    def color_match_count
      total_match_count - exact_match_count
    end
  
    def exact_match?(index)
      @guess[index] == @secret[index]
    end

    def color_match?(index)
      @secret.include?(@guess[index])
    end
  end
end
