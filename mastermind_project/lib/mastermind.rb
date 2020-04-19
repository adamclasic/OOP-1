require_relative "code"

class Mastermind

    def initialize(len)
        @secret_code = Code.random(len)
    end

    def print_matches(code_ins)
        p @secret_code.num_exact_matches(code_ins)
        p @secret_code.num_near_matches(code_ins)
    end

    def ask_user_for_guess()
        p 'Enter a code'
        input = gets.chomp
        code = Code.from_string(input)
        p @secret_code.num_exact_matches(code)
        p @secret_code.num_near_matches(code)
        @secret_code.==(code) ? true : false
    end


end
