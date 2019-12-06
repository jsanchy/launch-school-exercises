def minilang(commands_str)
  register = 0
  stack = []

  commands_str.split.each do |command|
    case
    when command == command.to_i.to_s then register = command.to_i
    when command == 'PUSH'       then stack.push(register)
    when command == 'ADD'        then register += stack.pop
    when command == 'SUB'        then register -= stack.pop
    when command == 'MULT'       then register *= stack.pop
    when command == 'DIV'        then register /= stack.pop
    when command == 'MOD'        then register %= stack.pop
    when command == 'POP'
      return "Error: Cannot POP empty stack." if stack.empty?
      register = stack.pop
    when command == 'PRINT'      then puts register
    else
      return "Error: Invalid command '#{command}'."
    end
  end
  nil
end

p minilang('PRINT')
# 0

p minilang('5 PUSH 3 MULT PRINT')
# 15

p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

p minilang('5 PUSH POP PRINT')
# 5

p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

p minilang('-3 PUSH 5 SUB PRINT')
# 8

p minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# (3 + (4 * 5) - 7) / (5 % 3)
p minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')

p minilang('YOU_MUST_FOLLOW_MY_COMMANDS')

p minilang('POP')
