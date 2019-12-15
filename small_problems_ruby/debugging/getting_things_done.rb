=begin

We wrote a method for moving a given number of elements from one array to
another. We decide to test it on our todo list, but invoking move on line 11
results in a SystemStackError. What does this error mean and why does it happen?

This happens because move will keep calling itself recursively forever since
there is no flow control to stop when the number of intended recursive calls
has been reached. Changing

  move(n - 1, from_array, to_array)

to

  move(n - 1, from_array, to_array) if n - 1 > 0

stops the recursive calls after n elements have been moved.

Further exploration

If the length of from_array is less than n, then n - from_array.size `nil`
elements will be added to the end of the to_array. The recursive calls can be
stopped by requiring that the from_array be non-empty, so that if n is greater
than the size of from_array, then the entire array will be moved to the to_array
but no nil elements will be added after that. Like so:

  move(n - 1, from_array, to_array) unless n - 1 == 0 || from_array.empty?

=end

def move(n, from_array, to_array)
  to_array << from_array.shift
  move(n - 1, from_array, to_array) unless n - 1 == 0 || from_array.empty?
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']
