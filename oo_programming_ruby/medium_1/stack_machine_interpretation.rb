class MinilangError < StandardError; end
class TokenError < MinilangError; end
class StackError < MinilangError; end

class Minilang
  VALID_TOKENS = %w(PUSH ADD SUB MULT DIV MOD POP PRINT).map(&:freeze)

  INTEGER_REGEX = /^-?\d+$/

  def initialize(program)
    @program = program
  end

  def eval(args_hsh = {})
    @register = 0
    @stack = []
    @tokens = format(@program, args_hsh).split

    @tokens.each do |token|
      eval_token(token)
    end

  rescue MinilangError => error
    puts error.message
  end

  private

  def eval_token(token)
    # Place a value in the register if token is an integer
    match_data = token.match(INTEGER_REGEX)
    if match_data
      @register = match_data[0].to_i
      return
    end

    valid = VALID_TOKENS.include?(token)
    send(token.downcase) if valid
    raise TokenError, "Invalid token: #{token}" unless valid
  end

  def push
    @stack << @register
  end

  def add
    @register += pop_from_stack
  end

  def sub
    @register -= pop_from_stack
  end

  def mult
    @register *= pop_from_stack
  end

  def div
    @register /= pop_from_stack
  end

  def mod
    @register %= pop_from_stack
  end

  def pop
    @register = pop_from_stack
  end

  def print
    puts @register
  end

  def pop_from_stack
    raise StackError, 'Empty stack!' if @stack.empty?
    @stack.pop
  end
end

Minilang.new('PRINT').eval
# 0

Minilang.new('5 PUSH 3 MULT PRINT').eval
# 15

Minilang.new('5 PRINT PUSH 3 PRINT ADD PRINT').eval
# 5
# 3
# 8

Minilang.new('5 PUSH 10 PRINT POP PRINT').eval
# 10
# 5

Minilang.new('5 PUSH POP POP PRINT').eval
# Empty stack!

Minilang.new('3 PUSH PUSH 7 DIV MULT PRINT ').eval
# 6

Minilang.new('4 PUSH PUSH 7 MOD MULT PRINT ').eval
# 12

Minilang.new('-3 PUSH 5 XSUB PRINT').eval
# Invalid token: XSUB

Minilang.new('-3 PUSH 5 SUB PRINT').eval
# 8

Minilang.new('6 PUSH').eval
# (nothing printed; no PRINT commands)

CENTIGRADE_TO_FAHRENHEIT =
  '5 PUSH %<degrees_c>d PUSH 9 MULT DIV PUSH 32 ADD PRINT'
minilang = Minilang.new(CENTIGRADE_TO_FAHRENHEIT)
minilang.eval(degrees_c: 100)
# 212
minilang.eval(degrees_c: 0)
# 32
minilang.eval(degrees_c: -40)
# -40
