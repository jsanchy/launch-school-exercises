# Our countdown to launch isn't behaving as expected. Why? Change the code so
# that our program successfully counts down from 10 to 1.

# The reason the program doesn't behave as expected is because the variable
# `counter` is not actually updated when `decrease(counter)` is called inside
# the loop. It is not updated because the method `decrease` does not mutate the
# argument that is passed to it. The expected behavior can be achieved by
# changing the line `decrease(counter)` to also reassign `counter`.

def decrease(counter)
  counter - 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
