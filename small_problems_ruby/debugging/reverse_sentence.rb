=begin

The reverse_sentence method should return a new string with the words of its
argument in reverse order, without using any of Ruby's built-in reverse methods.
However, the code below raises an error. Change it so that it behaves as
expected.

The line

  reversed_words = words[i] + reversed_words

is intending to add words[i] to the front of an array that is accumulating the
words in reverse order. However, the `+` operator is trying to perform
String#+ instead of Array#+. One way this can be fixed is by changing

  words[i]

to

  [words[i]]

Another way is to use Array#unshift, which adds an arguments to the front of
the calling array. So the entire line

  reversed_words = words[i] + reversed_words

can be replaced with

  reversed_words.unshift(words[i])

=end

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
