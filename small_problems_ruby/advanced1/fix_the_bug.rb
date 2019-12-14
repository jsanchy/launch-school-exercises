=begin

def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

The original code (above) prints the following:

[]
nil
nil
nil

This is because the elsif branch of the if statement was missing a conditional.

One conditional that makes the program print the desired results is:

```
array.size > 1
```

Since no conditional was given, the code

```
array.map do |value|
  value * value
end
```

which was intended to run if the (missing) elsif conditional evaluates to
`true`, is used as the conditional. That code will always return an array, which
means that it will always return a truthy value. So, if the input array is
empty, the `elsif` will execute. Each time it executes, its conditional
(an array) evaluates to `true` in a boolean context. This means the `elsif`'s
`then` expression will execute. However, there is no code to run in the `then`
expression, since the intended code was used as the contidional for the `elsif`
expression. Thus, the `elsif` returns `nil`, which becomes the return value of
`my_method`.

=end

def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([]) == []
p my_method([3]) == [21]
p my_method([3, 4]) == [9, 16]
p my_method([5, 6, 7]) == [25, 36, 49]
