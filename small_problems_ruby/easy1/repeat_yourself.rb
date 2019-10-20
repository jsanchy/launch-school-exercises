=begin

inputs:
string, integer

outputs:
string input printed integer times, with new line after each time

examples:

'Hello', 3
=>
Hello
Hello
Hello

'hi', 1
=>
hi

'', 0
=>


'hi', 0
=>


algorithm:

loop count times
  print string

=end

def repeat(string, count)
  count.times { puts string }
end

repeat(gets.chomp, gets.chomp.to_i)